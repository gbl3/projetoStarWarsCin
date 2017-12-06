class CreateCria < ActiveRecord::Migration[5.1]
  def change
    create_table :cria, {:id => false} do |t|
      t.string :id_usuario
      t.string :id_sabre

      t.timestamps
    end
  end
end
