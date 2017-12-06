class CreateBattleDroids < ActiveRecord::Migration[5.1]
  def change
    create_table :battle_droids, {:id => false} do |t|
      t.string :id_fabricacao
      t.string :tipo_arma

      t.timestamps
    end
  end
end
