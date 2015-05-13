json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :id, :first_name, :last_name, :email
  json.url subscriber_url(subscriber, format: :json)
end
