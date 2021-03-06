module ApplicationHelper
  def existe_carrinho?(id)
    return false if cookies[:carrinho].blank?
    produtos = JSON.parse(cookies[:carrinho]);
    produtos.include?(id.to_s)
  end

  def total_itens_carrinho
      return 0 if cookies[:carrinho].blank?
      return JSON.parse(cookies[:carrinho]).length
  end

  def cliente_logado?
      return  false if cookies[:cliente_login].blank?
      cliente = JSON.parse(cookies[:cliente_login]);
      return Cliente.where(id: cliente["id"]).count > 0
  end

  def cliente
      cliente = JSON.parse(cookies[:cliente_login]);
      return Cliente.find(cliente["id"])
  end

end
