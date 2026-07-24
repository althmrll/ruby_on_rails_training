#Ruby script using input/output and control flow

puts "What is your name?"
name = gets.chomp
puts "What is your age?"
age=gets.chomp

remaining_years=21-age.to_i

unless age.to_i>=21
  puts "Sadly, you still have " + remaining_years.to_s + " year/s remaining before you become an adult."
else
  puts "Congrats " + name + "! You're an adult in all countries"
end