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
      
      # set qbxml attributes that exist in model and map
      model_qbxml_attributes = qbxml_model_map.keys & attribute_names.map{ |a| a.to_sym }
      node = xml.respond_to?('innerHTML') ? xml : Hpricot.XML(xml).root
      model_qbxml_attributes.each do |a|
        self[a.to_sym] = hpricot_fetch(node, qbxml_model_map[a.to_sym])
      end
      
      # build has_many associations
      has_many_associations = self.class.reflections.dup.delete_if { |k,v| self.class.reflections[k].macro != :has_many }
      has_many_associations.each do |name,association_def|
        association_model = (association_def.options[:class_name] || name).to_s.singularize.camelize
        element = association_model.to_s + 'Ret'
        node.search("> #{element}").each do |association_node|
          self.send(name).send(:build, :qbxml => association_node)
        end
      end
    end

    private

      def hpricot_fetch(node, path)
        element = node/path
        return nil if element.nil? || element.empty?
        element = element.first if element.is_a?(Array)
        element.innerHTML.gsub('&amp;', '&').gsub('&apos;', "'")
      end
  end
end