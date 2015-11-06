json.array!(@pupils) do |pupil|
  json.extract! pupil, :id, :first_name, :last_name, :email, :age
  json.url pupil_url(pupil, format: :json)
end
