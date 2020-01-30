class IugoCustomerId < ActiveRecord::Migration[5.2]
  def change
    add_column :clientes, :iugo_costumer_id, :string
  end
end
