class CreateResponsavels < ActiveRecord::Migration[5.1]
  def change
    create_table :responsavels, {:id => false} do |t|
      t.string :cod_padawan, primary_key: true
      t.string :nome
      t.string :planeta_origem

      t.timestamps
    end
  end
end
