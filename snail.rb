# coding: utf-8
# snail.rb
#   A timer with a moving snail
# Usage: ruby snail.rb [seconds]

SNAIL = "@ij"
FINISH = "@.zZ"
TRAIL = "."

count = ARGV[0].to_i
if count < 1
  count = 10
end

count.times do
  STDERR.print SNAIL
  sleep 1
  STDERR.print "\b" * SNAIL.length
  STDERR.print TRAIL
end

STDERR.puts FINISH

# EOF
