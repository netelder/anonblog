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

get '/posts/new' do
  erb :new_post
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

delete '/posts/:id' do
  p 'destroy'
  Post.destroy(params[:id])
 redirect '/posts'
end


post '/posts' do
  # Create a post
  @post = Post.create(:title => params[:title], :body => params[:body])
  tags = params[:tags].split(',')

  tags.each do | tag |
    Tag.find_or_create_by_name(:name => "#{tag.strip.capitalize}")
  end
  @tags = Tag.all
  erb :show_post
end
