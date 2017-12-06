class CreateTemplos < ActiveRecord::Migration[5.1]
  def change
    create_table :templos, {:id => false} do |t|
      t.string :id_templo, primary_key: true
      t.string :nome_templo
      t.string :planeta

      t.timestamps
    end
  end
end
