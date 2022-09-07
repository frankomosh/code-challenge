class Concert
    attr_accessor :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = date
        @venue = venue
        @@all << self
    end

    def self.all
        @@all
    end
    
    def hometown_show?
        self.venue.city == self.band.hometown
    end

    def introduction
        "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end
end