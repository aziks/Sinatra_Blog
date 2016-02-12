require_relative "./post.rb"
require "pry"

class Blog

  attr_reader :posts

  def initialize
    @posts = []
  end

  def add_post(post)
    @posts << post ? true : false
  end

  def latest_posts
    @posts.sort  {|post1, post2| post2.date <=> post1.date}
  end

end

