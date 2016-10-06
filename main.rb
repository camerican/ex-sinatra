require 'sinatra'

get '/' do
  @menu = [
    {:page => 'Home', :href => '/'},
    {page: 'About', href: '/about'},
    {page: 'Shelter', href: '/pound'}
  ]

  @secret_number = 47
  @class = ["Arnold","Izza","Miguel","Alberto","John","Brian","Yerlan","Bryce","Emma Jean","Skylar","Mike","George","Kevin","Danna","William"]
  erb :home
end

get '/about' do
  erb :about
end

post '/about' do
  @message = "Your name is #{params[:username]}"
  erb :about
end

get '/pound' do
  @dogs = ['dog1.jpg','dog2.jpg','dog3.jpg','dog4.jpg']
  erb :pound
end










