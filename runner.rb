require_relative 'lib/games'
require_relative 'lib/event'

puts 'Welcome to Super Sports Games'


puts 'please enter the name of the sport:'
name = gets.chomp.capitalize

puts 'please enter the ages of the participants:'
ages = gets.chomp

array = ages.split(',').map do |num|
  num.strip.to_i
end

event = Event.new(name, array)

puts 'Enter the year of your event:'
year = gets.chomp

games = Games.new(year)


games.add_event(event)
puts "----------------------------------------------"
puts games.summary
