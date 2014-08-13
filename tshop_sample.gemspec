$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tshop_sample/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tshop_sample"
  s.version     = TshopSample::VERSION
  s.authors     = ["Andy Wang"]
  s.email       = ["climber2002@gmail.com"]
  s.homepage    = "http://climber2002.github.io"
  s.summary     = "Creates sample data for TShop"
  s.description = "Creates a set of sample data for TShop"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.4"
  s.add_dependency 'spree_core', '~> 2.3.0'

  s.add_development_dependency "sqlite3"
end
