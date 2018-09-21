class Favorite

  #Class variable
  @@all = []

  attr_reader :user, :tweet

    def initialize(tweet, user)
      @tweet = tweet
      @user = user
      @all << self
    end

    #Class Method
    def self.all
      @all
    end


end
