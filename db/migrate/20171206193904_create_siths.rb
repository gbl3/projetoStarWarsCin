class CreateSiths < ActiveRecord::Migration[5.1]
  def change
    create_table :siths, {:id => false} do |t|
      t.string :id_usuario, primary_key: true
      t.string :funcao

      t.timestamps
    end
  end
end
