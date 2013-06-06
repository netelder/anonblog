get '/tag' do
  # get all tag names
  # display them in a clickable page that calls /tag/:name
  erb :tags
end

get '/tag/:name' do
  # Find titles of all posts with tag :name
  # call the display titles erb
  erb :titles
end
