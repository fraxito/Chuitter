json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :email
  json.url usuario_url(usuario, format: :json)
end
