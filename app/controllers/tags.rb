get '/tags' do
  redirect '/posts'
end

get '/tags/:name' do
  @tag = Tag.find_by_name(params[:name])
  @posts = @tag.posts
  @tags = Tag.all
  erb :posts
end
