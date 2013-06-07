get '/posts' do
  if params[:tag]
    @tag = Tag.find(params[:tag])
    @posts = @tag.posts
  else 
    @posts = Post.all
  end
  @tags = Tag.all
  erb :posts
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  #send it to the display post erb
  @tags = Tag.all
  erb :show_post
end

get '/posts/:id/edit' do
  # get post(id)
  erb :edit_post
end


get '/posts/new' do
  erb :new_post
end

delete '/posts/:id' do
  #delete post(id)
  @deleted = params[:id]
  @tags = Tag.all
  erb :posts
end


post '/posts' do
  # Create a post
  # retrieve post
  erb :show_post
end
