module RailsModularAdmin
	require 'rails'
  class Engine < ::Rails::Engine
    isolate_namespace RailsModularAdmin
    require "sassc-rails"
    require "font-awesome-rails"
    initializer "RailsModularAdmin.precompile" do |app|
   		app.config.assets.precompile += %w(rails_modular_admin.js)
		app.config.assets.precompile += %w( animate.css/animate.css )
		app.config.assets.precompile += %w( animate.css/animate.css )
		app.config.assets.precompile += %w( animate.css/animate.css )

      [
        '/animate.css','/jquery/dist/',
		 '/jquery-flot/',
		 '/jquery-flot/',
		 '/jquery-flot/',
		 '/jquery-flot/',
		 '/jquery.flot.tooltip/',
		 '/jquery-validation/dist/',
		 '/jquery-sparkline/',
		 '/jqvmap/dist/',
		 '/jqvmap/dist/maps/',
		'/metismenu/dist/',
		 '/nprogress/',
		 '/quill/dist/',
		 '/responsive-toolkit/dist/',
		 '/sortablejs/',
		 '/tether/dist/js/',
		 '/tinycolor2/',
		 '/dropzone/dist/',
		 '/jquery-touchswipe/',
		 '/jquery.browser/dist/',
		 '/popper.js/dist/',
		 '/bootstrap/dist/js/',
		 '/bootstrap/scss/',
		 '/raphael/',
		 '/morris.js/'].each do |pkg|
		 	app.config.assets.paths << pkg
		 end
 		end
  end
end
