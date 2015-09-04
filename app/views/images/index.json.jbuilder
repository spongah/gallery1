json.array!(@images) do |image|
  json.extract! image, :id, :name, :filename, :description, :Gallery_id
  json.url image_url(image, format: :json)
end
