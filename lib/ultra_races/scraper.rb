class Scraper
  def self.firstscrape
    url = open("https://hiconsumption.com/toughest-races-in-the-world/")
    doc = Nokogiri::HTML(url)
    ultra_rows = doc.css("div.super_capped")[0..16]
    ultra_rows.each do |row|
      name = row.css("h2").text
      description = row.css("p").text
      ultra = Ultra.new(name, description)
    end
  end
end
