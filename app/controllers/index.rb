get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/game/question/id' do
  erb :question
end


get '/results' do
  erb :results
end

get '/signup' do
  erb :sign_up
end

get '/logout' do
  redirect to ('/')
end


#______________________________post

post '/create_user' do

redirect to ('/')
end

post '/login' do

  
  redirect to ('/game/question/id')
end

post '/answer' do


  
  redirect to ('/game/question/id')
end
