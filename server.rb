#Inside of server.rb
require 'sinatra'
require 'sinatra/reloader'

require_relative 'lib/blog.rb'
require_relative 'lib/post.rb'

  blog = Blog.new
  blog.add_post Post.new("post1", "juhxchkjkfchjdsj")
  blog.add_post Post.new("post2", "juhxchkjkfchjdsj")
  blog.add_post Post.new("post3", "juhxchkjkfchjdsj")

get "/" do
  @posts = blog.latest_posts
  erb(:blog_titles)
end

get "/:title/:id" do
  @blog_data = blog.latest_posts
  @titulopost = params[:title]
  @id = params[:id]
  erb(:single_post)
end