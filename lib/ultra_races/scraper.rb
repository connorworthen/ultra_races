class UltraRaces::Scraper

    def self.scarp
      @doc = Nokogiri::HTML(open("https://www.runningintheusa.com/classic/list/map/ultra/upcoming/ca"))
      @scraping_block = @doc.css("")
    end
  
    def self.scrape_races
          @scraping_block.each do |ele|
          race = ele.css("").text.strip
          date = ele.css("").text.strip
          location = ele.css("").text.strip
          ultra = UltraRaces::Ultra.new(race, date, location)
          UltraRaces::Ultra.all << ultra
      end
    end
  end