require "sinatra"
enable :sessions

get '/' do
	erb :names
end

post '/name' do
	f_name = params[:f_name]
	redirect '/last_name?first_name=' + f_name
end

get '/last_name' do
	f_name = params[:first_name]
	erb :lastname, locals: {f_name:f_name}
end

post '/last_n' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	redirect '/age?firstname=' + f_name + "&last_name=" + l_name
end

get '/age' do
	f_name = params[:firstname]
	l_name = params[:last_name]
	erb :how_old, locals:{f_name: f_name, l_name: l_name}
end

post '/how_old' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	age = params[:age]
	"#{age} & #{f_name} & #{l_name}"
end