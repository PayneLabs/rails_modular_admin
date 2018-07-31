require "rails_modular_admin/engine"
require_relative "../app/helpers/rails_modular_admin_helpers"

module RailsModularAdmin
  ActionView::Base.send :include, RailsModularAdminHelpers
end
