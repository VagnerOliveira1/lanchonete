json.extract! produto, :id, :name, :descricao, :quantidade, :tipo_produto_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)
