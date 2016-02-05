require 'json'

def convert_from_json(file)
  points  = File.read(file)
  my_hash = JSON.parse(points)
end

points_hash = convert_from_json('groundTruthPoints.json')
features =  points_hash["features"]


features.each do |point|
  Point.create! (
  id: point ["attributes"]["ID"],
  elevation: point["attributes"]["Elevation"],
  datetime: point["attributes"]["DateTimeS"],
  description: point["attributes"]["Description"],
  longitude: point["geometry"]['x'],
  latitude: point["geometry"]['y']
  )
end
