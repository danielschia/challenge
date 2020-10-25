class BigDecimalToSolicitation < ActiveRecord::Migration[6.0]
  def change
    change_column :solicitations, :valor_parcela, :decimal, :precision => 8, :scale => 2
  end
end
