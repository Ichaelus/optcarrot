require_relative "lib/optcarrot"
require_relative "tools/shim"
require 'stringio'

50.times do |n|
  puts "Running for the #{n}th time"
  # Contents of bin/optcarrot
  #iobuffer = StringIO.new
  #$stdout = iobuffer
  Optcarrot::NES.new(["--benchmark", "examples/Lan_Master.nes"]).run
  #benchmark_result = $stdout.string
end.start
