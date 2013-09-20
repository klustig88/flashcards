get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/game/question/id' do
  if session[:id] 
    erb :question
  else
    redirect to ('/')
  end

end


get '/results' do
  erb :results
end

get '/signup' do
  erb :sign_up
end

get '/logout' do
  session.clear
  redirect to ('/')
end


#______________________________post

post '/create_user' do
  username = params[:username]
  email = params[:email]
  password = params[:password]
  @current_user = User.new(username: username, email: email, password: password)
  if @current_user.save
    session[:id] = @current_user.id
    redirect to ('/game/question/id')
  else
    redirect to ('/')
  end
end

post '/login' do
 username = params[:username]
 password= params[:password]
 @sample = User.find_by_username(username)
   if @sample
    @current_user = User.authenticate(params[:username],params[:password])
      if @current_user
        session[:id]= @current_user.id
        redirect to ('/game/question/id')
      else
        redirect to ('/')
      end
    else
    redirect to ('/')
  end
end

post '/answer' do


  
  redirect to ('/game/question/id')
end
