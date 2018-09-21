

def print_all_tweets
  Tweet.all
end

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
