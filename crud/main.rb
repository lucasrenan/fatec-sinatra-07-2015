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

# GET /posts/1/edit
get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit
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

# PUT /posts/1
put '/posts/:id' do
  @post = Post.find(params[:id])

  if @post.update(params[:post])
    redirect to("/")
  else
    erb :edit
  end
end












