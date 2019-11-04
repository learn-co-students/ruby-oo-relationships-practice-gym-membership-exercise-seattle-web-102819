# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

puts Gym.all

rykers_gym = Gym.new("rykers gym")

jacob = Lifter.new("jacob", 800)

Membership.new(50,rykers_gym, jacob)

hot_bodies = Gym.new("hot bodies")

jacob_hot_bodies = Membership.new(80, hot_bodies, jacob)

#puts rykers_gym.list_of_memberships

#puts jacob.list_of_memberships

# p jacob.list_gyms

# p jacob_hot_bodies.lifter.name

taylor  = Lifter.new("taylor", 900)

#p Lifter.average_lifters

#p jacob.total_cost

taylor_rykers = Membership.new(60, rykers_gym, taylor)

# p rykers_gym.list_lifters

# p rykers_gym.list_lifters_names

p rykers_gym.combine_all_lift_totals









