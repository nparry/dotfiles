desc "Link dot files"
task :link do
  Dir.glob("**/*.ln").each do |file|
    source_file = File.join(Dir.pwd, file)
    link_file = File.join(ENV["HOME"], "." + File.basename(file).sub(".ln", ""))

    if File.exists?(link_file) && !File.symlink?(link_file)
      abort("File #{link_file} already exists")
    elif File.symlink?(link_file)
      FileUtils.rm(link_file)
    end

    puts "Linking #{link_file} to #{source_file}"
    FileUtils.ln_sf(source_file, link_file)
  end
end

task :default => :link

