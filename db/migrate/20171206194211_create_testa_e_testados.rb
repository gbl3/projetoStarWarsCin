class CreateTestaETestados < ActiveRecord::Migration[5.1]
  def change
    create_table :testa_e_testados, {:id => false} do |t|
      t.string :id_usuario_j
      t.string :id_templo
      t.string :cod_padawan
      t.string :resultado
      t.date :data_teste

      t.timestamps
    end
  end
end
