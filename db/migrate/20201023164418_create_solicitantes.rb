class CreateSolicitantes < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitantes do |t|
      t.string :nome
      t.bigint :cnpj
      t.string :endereco
      t.bigint :telefone

      t.timestamps
    end
  end
end
