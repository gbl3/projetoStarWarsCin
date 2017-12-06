class CreateUsas < ActiveRecord::Migration[5.1]
  def change
    create_table :usas, {:id => false} do |t|
      t.string :id_usuario
      t.string :id_fabricacao

      t.timestamps
    end
  end
end
