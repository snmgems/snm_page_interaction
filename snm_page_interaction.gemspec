$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "snm_page_interaction/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "snm_page_interaction"
  s.version     = SnmPageInteraction::VERSION
  s.authors     = ["Sandeep maurya"]
  s.email       = ["snmmaurya@gmail.com"]
  s.homepage    = "https://github.com/snmgems/snm_page_interaction"
  s.summary     = "Visitor interaction on a page"
  s.description = "The library to capture/record user interaction on a page."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.8"
  # s.add_dependency 'jquery.cookie'


  s.add_development_dependency "sqlite3"
end