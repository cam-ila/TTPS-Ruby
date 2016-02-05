json.array!(@bills) do |bill|
  json.extract! bill, :id, :description, :date, :amount, :client_id, :person_id
  json.url bill_url(bill, format: :json)
end
