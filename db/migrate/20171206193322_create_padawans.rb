class CreatePadawans < ActiveRecord::Migration[5.1]
  def change
    create_table :padawans, {:id => false} do |t|
      t.string :cod_padawan, primary_key: true
      t.string :id_usuario_j
      t.string :nome_pad
      t.string :idade

      t.timestamps
    end
  end
end
