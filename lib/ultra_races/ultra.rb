class Ultra
  attr_accessor :name, :description, :location

  @@all = []

  def initialize(name, description)
    @name = name
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end
end

# def initialize(name=nil, description=nil)
#     @name = name
#     @description = description
#     self
# end
