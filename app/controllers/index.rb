get '/' do
  erb :index
end

get '/maps' do
  if request.xhr?
    content_type :json
    points = Point.all
    points.to_json
  end

  erb :geospatial
end
