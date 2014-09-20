def link_files(suffix, suffix_replacement, link_basedir, link_prefix)
  suffix_replacement = ".#{suffix_replacement}" unless suffix_replacement.empty?
  Dir.glob("**/*.#{suffix}").each do |file|
    source_file = File.join(Dir.pwd, file)
    link_file = File.join(link_basedir, link_prefix + File.basename(file).sub(".#{suffix}", suffix_replacement))

    if File.exists?(link_file) && !File.symlink?(link_file)
      abort("File #{link_file} already exists")
    elsif File.symlink?(link_file)
      FileUtils.rm(link_file)
    end

    puts "Linking #{link_file} to #{source_file}"
    FileUtils.mkdir_p(link_basedir) unless File.exists?(link_basedir)
    FileUtils.ln_sf(source_file, link_file)
  end
end

desc "Link dot files"
task :link do
  link_files("ln", "", ENV["HOME"], ".")
  link_files("ln.platform.#{`uname`.chomp.downcase}", "platform", ENV["HOME"], ".")
  link_files("ln.config", "", "#{ENV["HOME"]}/.config", "")
end

task :default => :link

