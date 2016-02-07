json.array!(@heros) do |hero|
  json.extract! hero, :id, :day, :User_id
  json.url hero_url(hero, format: :json)
end
