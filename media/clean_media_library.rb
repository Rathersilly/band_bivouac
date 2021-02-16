require 'fileutils'
require 'pathname'

dir = Pathname(Dir.pwd)
puts dir
if dir.basename.to_s.include? 'media'
  puts 'Directory is acceptable'
else
  puts 'Wrong directory'
  exit
end

count = 0
dir.children.each do |x|
  if File.directory?(x)

    # FileUtils::DryRun.rm_rf(x)
    FileUtils.rm_rf(x)
    puts "removing dir: #{x}"
    count += 1
  else
    puts "not removing file: #{x}"
  end
end

puts "removed #{count} directories"
