class AddTelefoneFixoAndComplentoToClientes < ActiveRecord::Migration[5.2]
  def change
    add_column :clientes, :telefone_fixo, :string
    add_column :clientes, :complemento, :string
  end
end
