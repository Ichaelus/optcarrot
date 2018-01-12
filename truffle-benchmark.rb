require_relative "lib/optcarrot"
require_relative "tools/shim"
require 'stringio'
require 'get_process_mem'

250.times do |n|
  puts "Running for the #{n}th time"
  Optcarrot::NES.new(["--benchmark", "examples/Lan_Master.nes"]).run
  puts "RAM: #{GetProcessMem.new.mb.round} MB\n"
end
