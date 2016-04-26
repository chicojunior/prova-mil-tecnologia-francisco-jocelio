json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :idade, :salario
  json.url funcionario_url(funcionario, format: :json)
end
