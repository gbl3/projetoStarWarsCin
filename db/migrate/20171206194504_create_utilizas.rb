class CreateUtilizas < ActiveRecord::Migration[5.1]
  def change
    create_table :utilizas, {:id => false} do |t|
      t.string :id_usuario
      t.string :id_fabricacao

      t.timestamps
    end
  end
end
