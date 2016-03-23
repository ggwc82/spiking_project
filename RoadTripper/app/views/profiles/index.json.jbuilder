json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :hometown, :age
  json.url profile_url(profile, format: :json)
end
