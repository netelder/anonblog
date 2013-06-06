get '/tags' do
  # get all tag names
  # display them in a clickable page that calls /tag/:name
  @tags = Tag.all
  erb :tags
end
