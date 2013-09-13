##############################################
# Countdown.rb
# A simple ruby script that outputs the
# distance between two dates.
# Include it in your tmux status line with:
# Days until Christmas: #[fg=green]#(ruby ~/tmux_scripts/scripts/countdown.rb 2013, 12, 25)
#
# Expects 3 Arguments: day, month and year
#############################################

require 'date'

day = ARGV[0].to_i
month = ARGV[1].to_i
year = ARGV[2].to_i

target = Date.new(year, month, day)
today = Date.today

result = target - today
puts "#{result.to_i} days to go!"
