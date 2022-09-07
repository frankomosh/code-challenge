require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

band_one = Band.new("Ona", "Carlifornia")
band_two = Band.new("Swedish House Mafia", "Sweden")
band_three = Band.new("Hart the Band", "Kenya")

#Venue Instances
venue_one = Venue.new("O2 Arena", "London")
venue_two = Venue.new("The Spoke", "Abidjan")
venue_three = Venue.new("Carnovore Gardens", "Nairobi")

#Concert Instances
concert_one = Concert.new("2022.08.29", band_three, venue_one)
concert_two = Concert.new("2022.08.31", band_one, venue_three)
concert_three = Concert.new("2022.09.05", band_two, venue_two)

#Venue Plays 

band_one.play_in_venue(venue_one, "2022.09.22")
band_one.play_in_venue(venue_two, "2022.08.31")
band_two.play_in_venue(venue_two, "2022.08.31")
band_two.play_in_venue(venue_two, "2022.08.29")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
