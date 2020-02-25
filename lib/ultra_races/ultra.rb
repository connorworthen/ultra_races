# frozen_string_literal: true

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

# The attr_accessor method is a short cut to declaring variable accessible outside the block within the method.
# The initializer method in ruby is the method to be called when someone initializes something of that class
