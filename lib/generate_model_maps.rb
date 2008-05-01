require 'rubygems'
require 'hpricot'

class QBXMLParser
  
  def self.generate_map(xml)
    @attributes = []
    doc = Hpricot.XML(xml)
    doc.root.children.each do |c|
      add_element(c)
    end
    @attributes
  end
  
  def self.add_element(element)
    return unless element.elem?
    element.containers.each do |c|
      add_element(c)
    end
    if element.containers.empty?
      path = element.xpath.gsub(/^\/\w+\/(.+)$/){ $1 }
      @attributes << [ qbxml_xpath_to_column(path), path ]
    end
  end
  
  def self.qbxml_xpath_to_column(xpath)
    # mostly ripped from ActiveSupport's Inflector
    xpath.to_s.
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr('/', '_').
      downcase
  end
end

# generate model maps
dir = File.dirname(__FILE__)
Dir["#{dir}/../resources/*"].each do |resource|
  model_type = File.basename(resource)[0..-5]
  File.open("#{dir}/model_maps/#{model_type}.rb", 'w+') do |f|
    map = QBXMLParser.generate_map(File.read(resource))
    formatted_map = map.map{ |a| ":#{a[0]} => '#{a[1]}'" }.join(",\n      ")
    f.write <<-MAP
module QBXML
  module ModelMaps
    #{model_type} = {
      #{formatted_map}
    }
  end
end
    MAP
  end
end