class Gym
  attr_reader :name
@@all = [ ]
  def initialize(name)
    @name = name
    @memberships = memberships
    @lifter = lifter
    @all << self 
  end
  def self.all
    @@all
  end 
  def all_membership
    Memberships.all.select {|memberships| memberships.gym == self}.length
  end 
end
