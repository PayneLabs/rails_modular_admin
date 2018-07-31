# desc "Explaining what the task does"
# task :rails_modular_admin do
#   # Task goes here
# end

namespace :rails_modular_admin do
	
	desc "Copy over all javascripts from the Modular Admin src directory to the assets directory."
	task :copy_javascripts do
		  Dir.glob("#{modular_admin_src_path}/**/*\.js") {|filename|
		  	fname =  File.basename filename
		  	relpath = Pathname.new(filename).relative_path_from(Pathname.new("#{modular_admin_src_path}"))
		  	dest = File.dirname(File.join(Pathname.new(javascripts_path), relpath))
		  	FileUtils.mkdir_p(dest)
		  	cp filename, "#{dest}/#{fname}"
		  }
	end
	desc "Copy over all stylesheets from the Modular Admin src directory to the assets directory."
	task :copy_stylesheets do
		  Dir.glob("#{modular_admin_src_path}/**/*\.scss") {|filename|
		  	fname =  File.basename filename
		  	relpath = Pathname.new(filename).relative_path_from(Pathname.new("#{modular_admin_src_path}"))
		  	dest = File.dirname(File.join(Pathname.new(stylesheets_path), relpath))
		  	FileUtils.mkdir_p(dest)
		  	cp filename, "#{dest}/#{fname}"
		  }
	end


private
# Get relative root path
def root_path
	 File.expand_path '../../..', __FILE__
end

def modular_admin_src_path
	File.join root_path, "modular-admin-html/src"
end

  def javascripts_path
  	File.join root_path, "app/assets/javascripts/rails_modular_admin/"
	end

	def stylesheets_path
		File.join root_path, "app/assets/stylesheets/rails_modular_admin/"
	end
end
