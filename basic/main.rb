require "sinatra"

before do
  @title = "sinatra"
end

get "/" do
  erb :index
end

get "/show/:id" do
  params[:id].inspect
end

get "/hi" do
  @title = "sinatra wins!"
  erb :hi
end
