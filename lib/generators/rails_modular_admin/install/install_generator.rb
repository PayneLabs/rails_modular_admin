require 'rails/generators/base'
module RailsModularAdmin
  module Generators
    
	class InstallGenerator < Rails::Generators::Base
	  desc "This install generator copies over the custom-theme.scss file for you to modify to create your custom theme."
      source_root File.expand_path('templates', __dir__)

      def copy_custom_theme_file
        copy_file "custom-theme.scss", "app/assets/stylesheets/custom-theme.scss"
      end
      def copy_dashboard_layout
      	copy_file "dashboard.html.erb", "app/views/layouts/dashboard.html.erb"
      	copy_file "partials/_footer.html.erb", "app/views/layouts/partials/_footer.html.erb"
      end
      
    end
  end
end