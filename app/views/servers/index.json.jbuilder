json.array!(@servers) do |server|
  json.extract! server, :id, :name, :ip, :login, :gptlauncher_path
  json.url server_url(server, format: :json)
end
