require 'lib/parser'

namespace :qb do
  task :all => [ :model_maps, :migrations ]
  
  task :model_maps do
    QbxmlJsonParser.generate_model_maps
  end
  
  task :migrations do
    QbxmlJsonParser.generate_migrations
  end
end