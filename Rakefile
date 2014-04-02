def link_files(suffix, replacement)
  replacement = ".#{replacement}" unless replacement.empty?
  Dir.glob("**/*.#{suffix}").each do |file|
    source_file = File.join(Dir.pwd, file)
    link_file = File.join(ENV["HOME"], "." + File.basename(file).sub(".#{suffix}", replacement))

    if File.exists?(link_file) && !File.symlink?(link_file)
      abort("File #{link_file} already exists")
    elsif File.symlink?(link_file)
      FileUtils.rm(link_file)
    end

    puts "Linking #{link_file} to #{source_file}"
    FileUtils.ln_sf(source_file, link_file)
  end
end

desc "Link dot files"
task :link do
  link_files("ln", "")
  link_files("ln.platform.#{`uname`.chomp.downcase}", "platform")
end

task :default => :link

