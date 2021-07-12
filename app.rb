require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    "I'm a little webapp short and stout! Here's my port, here's my route!"
end

get '/sendhelp' do
    "It's dangerous to go alone, take this!"
end

get '/cat' do
    erb(:index)
end

get '/secret' do
    "Shhhhh!"
end

get '/supersecret' do
    "How did you find me?!"
end