class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end
  
  def list_of_memberships
    Membership.all.select do |n|
      n.gym == self
    end
  end

  def list_lifters_names
    lifters_from_gym = []
    Membership.all.select do |n|
      if n.gym == self
        lifters_from_gym << n.lifter.name
      end
    end
lifters_from_gym
  end

  def list_lifters
    lifters_from_gym = []
    Membership.all.select do |n|
      if n.gym == self
        lifters_from_gym << n.lifter
      end
    end
lifters_from_gym
  end


  def combine_all_lift_totals
    gym_specific_lift_totals = []
    Membership.all.select do |n|
      if n.gym == self
        gym_specific_lift_totals << n.lifter.lift_total
      end
    end
      return gym_specific_lift_totals.inject(0.0) {|memo, n| memo + n}
  end



end
