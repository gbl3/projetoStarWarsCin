class CreateNumComunicadors < ActiveRecord::Migration[5.1]
  def change
    create_table :num_comunicadors, {:id => false} do |t|
      t.string :n_comunicador, primary_key: true
      t.string :id_usuario

      t.timestamps
    end
  end
end
