#!/usr/bin/env ruby

300.times {
  name = "noise_" + rand(2**128).to_s(16) + ".txt"
  File.open(name, "w"){|f| f.write(rand(2**10000).to_s(2)) }
  puts "Added #{name}"
}

system("git add . && git commit -m '#{rand(2**rand(40)).to_s(32)} #{rand(2**rand(40)).to_s(32)} #{rand(2**rand(40)).to_s(32)}'")
  