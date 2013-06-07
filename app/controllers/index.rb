get '/' do
  # Look in app/views/index.erb
  redirect '/posts'
end

get '/zurb_demo' do
  erb :zurb_demo

end
