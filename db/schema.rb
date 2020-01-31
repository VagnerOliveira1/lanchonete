# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_31_141010) do

  create_table "administradors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "telefone"
    t.string "email"
    t.string "cep"
    t.string "endereco"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "senha"
    t.string "iugo_costumer_id"
  end

  create_table "pedido_produtos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pedido_id"
    t.bigint "produto_id"
    t.float "valor"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_pedido_produtos_on_pedido_id"
    t.index ["produto_id"], name: "index_pedido_produtos_on_produto_id"
  end

  create_table "pedidos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "cliente_id"
    t.float "valor_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "transacao_id"
    t.string "numero_boleto"
    t.string "pdf_boleto"
    t.string "status"
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
  end

  create_table "produtos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "descricao"
    t.integer "quantidade"
    t.bigint "tipo_produto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "valor"
    t.string "imagem"
    t.index ["tipo_produto_id"], name: "index_produtos_on_tipo_produto_id"
  end

  create_table "tipo_produtos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pedido_produtos", "pedidos"
  add_foreign_key "pedido_produtos", "produtos"
  add_foreign_key "pedidos", "clientes"
  add_foreign_key "produtos", "tipo_produtos"
end
