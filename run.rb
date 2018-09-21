require 'pry'
# environment & application setup
# requiring relative and necessary files to make our app communicate
require "./user"
require "./tweet"

# creating multiple user instances
tyler = User.new('tyler')
coffee_dad = User.new('coffee_dad')

# creating multiple tweet instances
tweet1 = Tweet.new('making coffee', coffee_dad)
tweet2 = Tweet.new('having coffee', coffee_dad)
tweet3 = Tweet.new('drinking coffee', coffee_dad)
tweet4 = Tweet.new('coffee coffee', tyler)
tweet5 = Tweet.new('finding coffee', tyler)




binding.pry

puts 'done'
