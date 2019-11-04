class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @all
  end

  def list_of_memberships
    Membership.all.select do |n|
      n.lifter == self
    end
  end

  def list_gyms
gyms = []
    Membership.all.map do |n|
      if n.lifter == self
      gyms << n.gym.name
        end
      end
    gyms
  end

  def self.average_lifters
    max_weights = []
    lift_totals = @@all.map do |n|
      max_weights << n.lift_total
    end
     return max_weights.inject(0.0) { |sum, el| sum + el } / max_weights.size
  end

def total_cost
  expenses = []
  Membership.all.map do |n|
    if n.lifter == self
      expenses << n.cost 
    end
  end
  return expenses.inject(0.0) { |memo, n| memo + n }
end

def new_gym(cost, gym)
  Membership.new(cost, gym, self)
end



end
