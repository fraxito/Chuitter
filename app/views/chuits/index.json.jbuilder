json.array!(@chuits) do |chuit|
  json.extract! chuit, :id, :text, :usuario_id
  json.url chuit_url(chuit, format: :json)
end
