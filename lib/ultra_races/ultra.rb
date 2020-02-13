class UltraRaces::Ultra

    attr_accessor :date, :race, :location

    @@all = []

    def initialize(date=nil, race=nil, location=nil)
        @date = date
        @race = race
        @location = location
    end

    def self.all
        @@all
    end
end