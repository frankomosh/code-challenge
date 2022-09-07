class Venue
    attr_accessor :title, :concerts, :bands
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @bands = []
        @concerts = []
        @@all << self
    end

    def self.all
        @@all
    end

    def concert_on(date)
        concerts_on_date = self.concerts.find_all { |concert| concert.date == date }
        concerts_on_date.to_a.empty? ? concerts_on_date.first : nil
    end

    def most_frequent_band
        self.bands.max_by { |index| bands.count(index) }
    end
end