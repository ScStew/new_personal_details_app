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
first_name = params[:first_name]
erb :last_name, locals: {f_name: first_name}
end

post '/l_name' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	redirect '/age?firstname=' + f_name + "&last_name=" + l_name
end

get '/age' do
	f_name = params[:firstname]
	l_name = params[:last_name]
	"#{f_name}"
	erb :how_old, locals:{f_name: f_name, l_name: l_name}
end

post '/how_old' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	age = params[:age]
	redirect '/hair_color?firstname=' + f_name + "&lastname=" + l_name + "&age=" + age
end

get '/hair_color' do
	f_name = params[:firstname]
	l_name = params[:lastname]
	age = params[:age]
	erb :hair_color, locals:{f_name: f_name, l_name: l_name, age: age}
end

 post '/h_color' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	age = params[:age]
	hair = params[:hair]
	#{}"#{f_name} #{l_name} #{age} #{hair}"
	redirect '/eye_color?firstname=' + f_name + "&lastname=" + l_name + "&age=" + age + "&hair=" + hair
end

get '/eye_color' do
	f_name = params[:firstname]
	l_name = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	erb :eye_color, locals:{f_name: f_name, l_name: l_name, age: age, hair: hair}
end 

post '/eyecolor' do 

	end