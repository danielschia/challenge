class ChangeIntegerLimitInSolicitantes < ActiveRecord::Migration[6.0]
  def change
    change_column :solicitantes, :cnpj, :bigint
  end
end
