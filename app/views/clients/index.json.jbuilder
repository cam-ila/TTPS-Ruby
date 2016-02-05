json.array!(@clients) do |client|
  json.extract! client, :id, :name, :surname, :birthdate, :genre, :dni, :cuil, :skype, :email, :telephone, :address
  json.url client_url(client, format: :json)
end
