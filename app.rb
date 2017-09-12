require 'sinatra'
set :session_secret, 'super secret'

get'/'do
  "Hello World!!!"
end

get '/secret' do
  "say what!!!"
end

get'/try' do
  "test"
end

get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
 end

post '/named-cat' do
  p params
  @name = params[:name]
  @color = params[:color]
  erb(:index)
end

get '/cat-form' do
  # p params
  # @name = params[:name]
  # @color = params[:color]
  erb(:cat_form)
end
