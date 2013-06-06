get '/post' do
  #get all post titles
  #send them to the display post titles erb
  erb :titles
end

get '/post/:id' do
  #get post(id)
  #send it to the display post erb
  erb :post
end

get '/post/new' do
  erb :newpost
end

delete '/post/:id' do
  #delete post(id)
  @deleted = params[:id]
  erb :titles
end

get '/post/:id' do
  # get post(id)
  erb :edit
end

post '/post/:id' do
  # send post to database
  # retrieve post
  erb :post
end
