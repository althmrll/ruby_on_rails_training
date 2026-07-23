#Ruby script using input/output and control flow

puts "What is your name?"
name = gets.chomp
puts "What is your age?"
age=gets.chomp
remaining_years=21-age.to_i

unless age.to_i>=21
  puts "Conrats " + name + "! You're an adult in all countries"
else
  puts "Sadly, you still have " + remaining_years.to_s + " years remaining before you become an adult."
end