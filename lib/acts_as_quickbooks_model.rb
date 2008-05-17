require 'hpricot'
Dir["#{File.dirname(__FILE__)}/../model_maps/*"].each{ |model_map| load model_map }

module ActsAsQuickbooksModel
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def acts_as_quickbooks_model(model_type=nil)
      model_type ||= self.to_s
      raise "Unsupported QBXML model type: #{model_type}" unless QBXML::ModelMaps.constants.include?(model_type)
      const_set('QUICKBOOKS_MODEL_TYPE', model_type)
      include InstanceMethods
    end
  end
  
  module InstanceMethods
      
    def qbxml=(xml)
      model_type = self.class.const_get('QUICKBOOKS_MODEL_TYPE')
      qbxml_model_map = QBXML::ModelMaps.const_get(model_type)
      attributes_to_set = qbxml_model_map.keys & attribute_names.map{ |a| a.to_sym }
      node = xml.respond_to?('innerHTML') ? xml : Hpricot.XML(xml).root
      attributes_to_set.each do |a|
        self[a.to_sym] = hpricot_fetch(node, qbxml_model_map[a.to_sym])
      end
      
      # build has_many associations
      has_many_associations = self.class.reflections.delete_if { |k,v| self.class.reflections[k].macro != :has_many }
      has_many_associations.each do |k,v|
        association_model = Inflector.camelize(Inflector.singularize(k))
        element = association_model.to_s + 'Ret'
        node.search(element).each do |association_node|
          self.send(k).send(:build, :qbxml => association_node)
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