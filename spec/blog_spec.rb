require 'rspec'
require 'rack/test'

require_relative '../lib/blog.rb'
require_relative '../lib/post.rb'


RSpec.describe "Blog" do

  let (:bloglist) { Blog.new }

  describe "#add_post" do
    it "should add a post to the blog array" do
      new_post = Post.new("post1", "ijdsaffhju")
      expect(bloglist.add_post(new_post)).to eq(true)
    end
  end

  describe "#latest_posts" do
  it "should return an array of the posts in chronological order" do
    new_post0 = Post.new("post1", "ijdsaffhju")
    new_post1 = Post.new("post2", "ijdsaffhju")
    new_post2 = Post.new("post3", "ijdsaffhju")
    bloglist.add_post(new_post0)
    bloglist.add_post(new_post1)
    bloglist.add_post(new_post2)
    latest = bloglist.latest_posts
    expect(bloglist.posts[0]).to eq(latest[2])
  end
end
end

