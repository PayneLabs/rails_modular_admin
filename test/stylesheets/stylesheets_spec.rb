require 'rails_helper'

RSpec.describe "Stylesheets", type: :request do
    require "sprockets"

    let (:scss) do
        assets = Rails.application.assets
        assets.find_asset("rails_modular_admin.scss")
    end

    it "should successfully render the scss stylesheets using sprockets" do
        expect(scss).to_not eq nil
    end

    it "should not have any syntax errors" do
        expect(scss.to_s).to_not include("Syntax error:")
    end

    it "should include jqvmap CSS" do
        expect(Rails.application.assets.find_asset("jqvmap/dist/jqvmap.css")).to_not eq nil
        
    end

    it "should include animate CSS" do
        expect(Rails.application.assets.find_asset("animate.css/animate.css")).to_not eq nil
    end

end