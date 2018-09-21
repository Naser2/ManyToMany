class User
  # macro that creates a reader method for username
  attr_reader :username

  def initialize(username)
    @username = username


    # don't store tweets here!
    # storing all tweets in the Tweet model with @@all
    # @tweets = []
  end

  def post_tweet(message)
    # takes in a message and initializes a new tweet
    tweet = Tweet.new(message, self)
    # @tweets << tweet
  end

  # accessing the tweet class from a user instance
  def print_all_tweets
    Tweet.all
  end

  def tweets
    # self ==> instance of a user
    # Tweet.all ==> an array of all the tweet instances
    # this method should use Tweet.all to return
    # an array of tweets that belong to this user
    Tweet.all.select do |tweet|
      self == tweet.user
      # self.username == tweet.username => works, but we can do less above ^^
      # select needs a true / false comparison
    end
  end

  # defined using the attr_reader macro
  # ====================================
  # def username
  #   @username
  # end

  # def tweets
  #   @tweets
  # end
  # ====================================


  def favorite_tweet(tweet)
    #instance Method
    favorite = Favoriter.new(tweet, self)
  end


  def favorited_tweets

    favorite.all.select do |favorite|
    #return tweets where user match favorite
    favorite.user == tyler
    end

    favs_for_user = Favorite.all.map do |favorite|
      favorite.tweet
    # favorite.content
    # I want to see all

    #NOT EVERY FAVORITE
    #
  end


end
