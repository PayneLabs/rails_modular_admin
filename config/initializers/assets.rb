%w(bootstrap popper_js).each do |pkg|
Rails.application.config.assets.paths << "#{Gem.loaded_specs[pkg].full_gem_path}/assets/stylesheets"
Rails.application.config.assets.paths << "#{Gem.loaded_specs[pkg].full_gem_path}/assets/javascripts"
end

	 
	

 