json.array!(@people) do |person|
  json.extract! person, :id, :name, :sex, :age, :password, :email, :phone, :occupation, :education, :hobbies, :bio, :location, :relationship, :usertype
  json.url person_url(person, format: :json)
end
