require 'rubygems'
require 'json'

class QbxmlJsonParser
  def self.generate_model_maps
    definitions.each do |src|
      attributes = intermediate_mapping(src)

      # write model map
      model_name = File.basename(src)[0..-6]
      File.open("#{File.dirname(__FILE__)}/../model_maps/#{model_name}.rb", 'w+') do |f|
        formatted_map = attributes.map{ |a| ":#{a[0]} => '#{a[1]}'" }.join(",\n      ")
        f.write <<-MAP
# auto-generated from json definitions
module QBXML
  module ModelMaps
    #{model_name} = {
      #{formatted_map}
    }
  end
end
      MAP
      end
    end
  end
  
  def self.generate_migrations
    definitions.each do |src|
      attributes = intermediate_mapping(src)
      model_name = File.basename(src)[0..-6]
      File.open("#{File.dirname(__FILE__)}/../migrations/#{model_name}.rb", 'w+') do |f|
        columns = []
        attributes.map do |a|
          options = nil
          col_type = case a[3]
          when 'STRTYPE', 'ENUMTYPE', 'TIMEINTERVALTYPE'
            if a[2]
              options = ":limit => #{a[2]}"
            end
            :string
          when 'IDTYPE'
            options = ':limit => 36'
            :string
          when 'INTTYPE'
            :integer
          when 'DATETIMETYPE', 'DATETYPE'
            :datetime
          when 'AMTTYPE', 'QUANTYPE', 'PRICETYPE', 'PERCENTTYPE'
            options = ':precision => 9, :scale => 2'
            :decimal
          when 'BOOLTYPE'
            :boolean
          else
            'UNKNOWN!!!!'
          end
          columns << { :name => a[0], :col_type => col_type, :options => options }
        end
        
        f.puts '# auto-generated from json definitions'
        f.puts
        f.puts '# new table definitions'
        columns.each do |col|
          f.puts [ "t.#{col[:col_type]} :#{col[:name]}", col[:options] ].compact.join(', ')
        end
        f.puts
        f.puts '# add_column definitions'
        columns.each do |col|
          f.puts [ "add_column :table_name, :#{col[:name]}, :#{col[:col_type]}", col[:options] ].compact.join(', ')
        end
        f.puts
        f.puts '# remove_column definitions'
        columns.each do |col|
          f.puts "remove_column :table_name, :#{col[:name]}"
        end
        
      end
    end
  end
  
  def self.definitions
    Dir["#{File.dirname(__FILE__)}/../definitions/**/*.json"]
  end
  
  def self.intermediate_mapping(src)
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
    @attributes
  end
  
  def self.add_element(e, path='')
    if e['elements'] # recurse to add leafs only
      path += e['xmlName'] + '/' if e['xmlName'] != 'OR'
      e['elements'].each { |element| add_element(element, path) }
    else
      xml_path = path + e['xmlName']
      @attributes << [ columnize(xml_path), xml_path, e['maxCA'], e['xmlType'] ]
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