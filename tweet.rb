class Tweet
  attr_accessor :content
  attr_reader :user

  # class variable definied with @@
  # @@all stores all the instances of the Tweet class
  @@all = []

  # initialize method called by Tweet.new
  # takes in two arugments:
  # content => a string
  # user => an instance of the user class
  def initialize(content, user)
    @content = content
    @user = user
    # instance of the user class
    # so we can access all of the
    # users attributes and methods

    # pushes the new instance of tweet into the @@all array
    @@all << self
  end

  # class method => a method that can be called by the class,
  # in this case: Tweet
  def self.all
    @@all
  end

  # created by the attr_accesor
  # ===========================
  # def content
    # @content
  # end

  # def content=(new_message)
    # @content = new_message
  # end
  # ===========================

  def username
    @user.username
    # @user references the user instance
    # that this instance of tweet belongs to

    # we could also write
    # self.user.username
  end

end
