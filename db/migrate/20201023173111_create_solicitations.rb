class CreateSolicitations < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitations do |t|
      t.integer :valor
      t.integer :n_parcelas
      t.integer :valor_parcela
      t.date :datas_pagamentos
      t.references :solicitante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
