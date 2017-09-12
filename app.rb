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

get '/cat' do
  erb(:index)
 end
