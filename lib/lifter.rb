class Lifter
  attr_reader :name, :lift_total
 @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all
    @@all
  end 

  def all_memberships
    Gym.all.select {|all_memberships| all_memberships.memberships == self}
  end 
  
  def all_gym
    Membership.all.select {|memberships| membership.lifter == self}
  end 
 def lift_total
  @@all.select {|total| total.lifter == self}.length
 end 
  def total_cost 
    Membership.all.select {|memberships| memberships.cost = self}.sum
  end 
end
