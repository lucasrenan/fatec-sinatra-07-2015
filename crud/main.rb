require 'sinatra'
# gem install sinatra-contrib
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'

require_relative 'config/database'
require_relative 'models/post'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  @posts = Post.all
  erb :index
end

# GET /posts/new
get '/posts/new' do
  @post = Post.new
  erb :new
end

# POST /posts
post '/posts' do
  @post = Post.new(params[:post])

  if @post.save
    redirect to("/")
  else
    erb :new
  end
end














