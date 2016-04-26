json.array!(@folhas) do |folha|
  json.extract! folha, :id, :nome, :verba, :funcionarios
  json.url folha_url(folha, format: :json)
end
