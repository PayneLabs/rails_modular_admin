$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_modular_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_modular_admin"
  s.version     = RailsModularAdmin::VERSION
  s.authors     = ["Will Payne"]
  s.email       = ["will@paynelabs.io"]
  s.homepage    = "https://paynelabs.io"
  s.summary     = "Quickly add Modular Admin to your Rails app."
  s.description = "this plugin is designed to quickly generate views for Rails applications in need of dashboard functionality. This includes admin panels and SaaS applications. I found that over the course of my projects, I needed Dashboard pages very often, so by creating this gem, I'm at least saving my self a bunch of time..."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.require_path = 'lib'
  s.test_files    = s.files.grep(%r{^(spec|features)/})
  s.add_dependency "rails"
  s.add_dependency 'font-awesome-rails'
  s.add_dependency 'sassc-rails'
  s.add_dependency 'uglifier'
  s.add_dependency "jquery-rails"
  s.add_dependency "bootstrap", "~> 4.1"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rake"
  s.add_development_dependency "guard"
end
