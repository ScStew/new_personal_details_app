require "sinatra"
enable :sessions

get '/' do
	erb :names
end