require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    "I'm a little webapp short and stout! Here's my port, here's my route!"
end

get '/sendhelp' do
    "It's dangerous to go alone, take this!"
end

get '/random-cat' do
    @name = ["Apocalypse", "Abyss", "Rainbow", "Bean", "Potato", "Hashbrown", "Lord Snuggles", "Kuhiu"].sample
    erb(:index)
end

post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

get '/form' do
    erb(:form)
end

get '/secret' do
    "Shhhhh!"
end

get '/supersecret' do
    "How did you find me?!"
end