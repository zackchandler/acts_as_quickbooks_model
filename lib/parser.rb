require 'rubygems'
require 'json'

class QbxmlJsonParser
  def self.generate_model_map(src, des)
    json = JSON.parse(File.read(src))
    @attributes = []

    # find model type element to parse
    model_return_type = File.basename(src).gsub('.json', 'Ret')
    root = find_element_by_name(json, model_return_type)
    raise "Cound not find node: #{model_return_type}" unless root
    
    # add elements
    root['elements'].each do |element|
      next if element['count'] =~ /n$/ # don't add "has many" attributes
      add_element(element)
    end
    
    # write model map
    File.open(des, 'w+') do |f|
      formatted_map = @attributes.map{ |a| ":#{a[0]} => '#{a[1]}'" }.join(",\n      ")
      f.write <<-MAP
module QBXML
  module ModelMaps
    #{model_return_type[0..-4]} = {
      #{formatted_map}
    }
  end
end
    MAP
    end
  end
  
  def self.add_element(element, path='')
    if element['elements'] # recurse to add leafs only
      path += element['xmlName'] + '/' if element['xmlName'] != 'OR'
      element['elements'].each { |e| add_element(e, path) }
    else
      xml_path = path + element['xmlName']
      @attributes << [ columnize(xml_path), xml_path ]
    end
  end
  
  def self.find_element_by_name(json, name)
    if json['xmlName'] == name
      @model_type = json
    else
      json['elements'].each { |e| find_element_by_name(e, name) } if json['elements']
    end
    @model_type
  end
  
  def self.columnize(s)
    s.
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr('/', '_').
      downcase
  end
end

dir = File.dirname(__FILE__)
Dir["#{dir}/../definitions/**/*.json"].each do |src|
  des = "#{dir}/model_maps/#{File.basename(src).gsub('.json', '.rb')}"
  QbxmlJsonParser.generate_model_map(src, des)
end