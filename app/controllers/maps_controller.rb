get '/maps' do
  @maps_token = ENV["GOOGLE_MAPS_TOKEN"]
  erb :'maps/show'
end
