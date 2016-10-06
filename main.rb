require 'sinatra'

get '/' do
  @secret_number = 47
  @class = ["Arnold","Izza","Miguel","Alberto","John","Brian","Yerlan","Bryce","Emma Jean","Skylar","Mike","George","Kevin","Danna","William"]
  erb :home
end

get '/about' do
<<-MYHTMLCONTENT
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>About Page</title>
</head>
<body>
  <h1>About Page</h1>
  <form method="POST" action="/about">
  <label>Username</label><input name="username" placeholder="Enter your name" /> <input type="submit" value="Enter" />
  </form>
</body>
</html>
MYHTMLCONTENT
end

post '/about' do
  "Your name is #{params[:username]}"
end











