#!/usr/bin/env ruby
#Regular expression that will match the above cases
puts ARGV[0].scan(/hbt{2,5}n/).join
