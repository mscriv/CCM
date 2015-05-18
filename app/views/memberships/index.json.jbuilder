json.array!(@memberships) do |membership|
  json.extract! membership, :id, :first_name, :last_name, :business_name, :phone, :email, :business_needs, :business_issues
  json.url membership_url(membership, format: :json)
end
