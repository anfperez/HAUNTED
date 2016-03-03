json.array!(@haunts) do |haunt|
  json.extract! haunt, :id, :latitude, :longitude, :address, :description, :title, :image
  json.url haunt_url(haunt, format: :json)
end
