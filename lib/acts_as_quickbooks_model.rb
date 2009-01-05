require 'hpricot'
Dir["#{File.dirname(__FILE__)}/../model_maps/*"].each{ |model_map| load model_map }

module ActsAsQuickbooksModel
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def acts_as_quickbooks_model(*args)
      model_types = args.empty? ? self.to_s.to_a : args.to_a

      # validate model type(s)
      model_types.each do |model_type|
        raise "Unsupported QBXML model type: #{model_type}" unless QBXML::ModelMaps.constants.include?(model_type)
      end
      const_set('QUICKBOOKS_MODEL_TYPES', model_types)
      include InstanceMethods
    end
  end
  
  module InstanceMethods
      
    def qbxml=(xml)
      # build model_maps for all specified models
      qbxml_model_map = {}
      self.class.const_get('QUICKBOOKS_MODEL_TYPES').each do |model_type|
        qbxml_model_map.merge!(QBXML::ModelMaps.const_get(model_type))
      end
      
      # set qbxml attributes that exist in map and model
      model_qbxml_attributes = []
      qbxml_model_map.keys.each do |key|
        if self.respond_to?("#{key}=") && self.class.reflections[key.to_sym].nil?
          model_qbxml_attributes << key
        end
      end
      node = xml.respond_to?('innerHTML') ? xml : Hpricot.XML(xml).root
      
      model_qbxml_attributes.each do |a|
        element = node/"/#{qbxml_model_map[a.to_sym]}"
        next if element.nil? || element.empty?
        
        value = element.innerHTML.gsub('&amp;', '&').gsub('&apos;', "'")
        
        self.send("#{a}=", value)
      end
      
      # build has_many associations
      has_many_associations = self.class.reflections.dup.delete_if { |k,v| self.class.reflections[k].macro != :has_many }
      has_many_associations.each do |name,association_def|
        # search by has_many name and class_name
        possible_names = [ association_def.options[:class_name], name ].compact
        possible_names.each do |possible_name|
          search = possible_name.to_s.singularize.camelize
          node.search("> #{search}Ret|> #{search}Ref").each do |association_node|
            self.send(name).send(:build, :qbxml => association_node)
          end
        end
      end
    end
  end
end