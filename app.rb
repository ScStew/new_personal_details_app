require "sinatra"
enable :sessions

get '/' do
	message = params[:message]
	if message == "invalid username or password"
	erb :login, locals:{message:message}
	else
		blank = "please enter your username and password"
		erb :login, locals:{message:blank}
	end
end

post '/login' do
	username = params[:username]
	password = params[:password]
	message = "invalid username or password"
	if username == "scstew" && password == "12345"
			redirect '/names'
	else 
			redirect '/?message=' + message
	end
end
# post '/login' do
# 	username = params[:username]
# 	password = params[:password]
# 		if username == "scstew" && password == "12345"
# 			redirect '/names'
# 		else 
# 			redirect '/f_login'
# 		end
# end

# get '/f_login' do
# 	erb :f_login
# end

# post '/fail_login' do
# 	username = params[:username]
# 	password = params[:password]
# 		if username == "scstew" && password == "12345"
# 			redirect '/names'
# 		else
# 			redirect '/f_login'
# 		end	
# end
get '/names' do
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
	f_name = params[:f_name]
	l_name = params[:l_name]
	age = params[:age]
	hair = params[:hair]
	eye = params[:eye]
	redirect '/fav_food?firstname=' + f_name + "&lastname=" + l_name + "&age=" + age + "&hair=" + hair + "&eye=" + eye
end

get "/fav_food" do
	f_name = params[:firstname]
	l_name = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eye = params[:eye]
	erb :fav_food, locals:{f_name: f_name, l_name: l_name, age: age, hair: hair, eye: eye}
end

post "/food" do
	f_name = params[:f_name]
	l_name = params[:l_name]
	age = params[:age]
	hair = params[:hair]
	eye = params[:eye]
	food = params[:food]
	redirect '/fav_drink?firstname=' + f_name + "&lastname=" + l_name + "&age=" + age + "&hair=" + hair + "&eye=" + eye + "&food=" + food	
end

get '/fav_drink' do
	f_name = params[:firstname]
	l_name = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eye = params[:eye]
	food = params[:food]
	erb :fav_drink, locals:{f_name: f_name, l_name: l_name, age: age, hair: hair, eye: eye, food: food}
end	

post '/drink' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	age = params[:age]
	hair = params[:hair]
	eye = params[:eye]
	food = params[:food]
	drink = params[:drink]
	redirect '/fav_number?firstname=' + f_name + "&lastname=" + l_name + "&age=" + age + "&hair=" + hair + "&eye=" + eye + "&food=" + food + "&drink=" + drink	
end

get '/fav_number' do
	f_name = params[:firstname]
	l_name = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eye = params[:eye]
	food = params[:food]
	drink = params[:drink]
	erb :fav_number, locals:{f_name: f_name, l_name: l_name, age: age, hair: hair, eye: eye, food: food, drink: drink}
end

post '/number' do
	f_name = params[:f_name]
	l_name = params[:l_name]
	age = params[:age]
	hair = params[:hair]
	eye = params[:eye]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	#"#{f_name} #{l_name} #{age} #{hair} #{eye} #{food} #{drink} #{num1} #{num2} #{num3}"
	redirect '/results?firstname=' + f_name + "&lastname=" + l_name + "&age=" + age + "&hair=" + hair + "&eye=" + eye + "&food=" + food + "&drink=" + drink + "&num1=" + num1 + "&num2=" + num2 + "&num3=" + num3	
end

get '/results' do
	f_name = params[:firstname]
	l_name = params[:lastname]
	age = params[:age]
	hair = params[:hair]
	eye = params[:eye]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	total = num1.to_i + num2.to_i + num3.to_i
	erb :results, locals:{f_name: f_name, l_name: l_name, age: age, hair: hair, eye: eye, food: food, drink: drink, num1: num1, num2: num2, num3: num3, total: total}
end

