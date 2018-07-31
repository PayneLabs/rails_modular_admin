require 'rails_helper'

RSpec.describe "Javascript Dependencies", type: :request do
    require "sprockets"

    let (:main_js) do
        assets = Rails.application.assets
        assets.find_asset("rails_modular_admin.js")
    end

    it "should have a main javascript manifest" do
        expect(main_js).to_not eq nil
    end

    it "should include jquery javascripts" do
        expect(Rails.application.assets.find_asset("jquery.js")).to_not eq nil
    end

    it "should include popper javascripts" do
        expect(Rails.application.assets.find_asset("popper.js")).to_not eq nil
    end

    
end

 # ['/jquery/dist/',
	# 	 '/jquery-flot/',
	# 	 '/jquery-flot/',
	# 	 '/jquery-flot/',
	# 	 '/jquery-flot/',
	# 	 '/jquery.flot.tooltip/',
	# 	 '/jquery-validation/dist/',
	# 	 '/jquery-sparkline/',
	# 	 '/jqvmap/dist/',
	# 	 '/jqvmap/dist/maps/',
	# 	'/metismenu/dist/',
	# 	 '/nprogress/',
	# 	 '/quill/dist/',
	# 	 '/responsive-toolkit/dist/',
	# 	 '/sortablejs/',
	# 	 '/tether/dist/js/',
	# 	 '/tinycolor2/',
	# 	 '/dropzone/dist/',
	# 	 '/jquery-touchswipe/',
	# 	 '/jquery.browser/dist/',
	# 	 '/popper.js/dist/umd/',
	# 	 '/bootstrap/dist/js/',
	# 	 '/bootstrap/scss/',
	# 	 '/raphael/',
	# 	 '/morris.js/'].each do |pkg|
	# 	 	Rails.application.config.assets.paths << RailsModularAdmin::Engine.root.join('node_modules' + pkg)
	# 	 end