require 'rails/generators/base'
module RailsModularAdmin
  module Generators
    class ViewsGenerator < Rails::Generators::NamedBase
    desc "This generator copies over default templates for Modular Admin into your application."
    source_root File.expand_path('templates', __dir__)

      

      def copy_auth_layout
      	copy_file "auth.html.erb", "app/views/layouts/auth.html.erb"
      end

  	  def copy_login_view
        copy_file "login.html.erb", "app/views/devise/sessions/new.html.erb"
  	  end

      def copy_register_view
        copy_file "register.html.erb", "app/views/devise/registrations/new.html.erb"
      end

      def copy_recover_view
      	copy_file "recover.html.erb", "app/views/devise/registrations/new.html.erb"
      end
    end
  end
end