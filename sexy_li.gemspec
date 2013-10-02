$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sexy_li/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sexy_li"
  s.version     = SexyLi::VERSION
  s.authors     = ["Masaki Komagata"]
  s.email       = ["komagata@gmail.com"]
  s.homepage    = "https://github.com/komagata/sexy_li"
  s.summary     = "Make easy creating typicaly list."
  s.description = "Make easy creating typicaly list."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.0"
  s.add_development_dependency "sqlite3"
end
