json.array!(@hero1s) do |hero1|
  json.extract! hero1, :id, :User_id, :day
  json.url hero1_url(hero1, format: :json)
end
