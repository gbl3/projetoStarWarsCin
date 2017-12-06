class CreateDroids < ActiveRecord::Migration[5.1]
  def change
    create_table :droids, {:id => false} do |t|
      t.string :id_fabricacao, primary_key: true
      t.string :serial_name
      t.string :ano_fabricacao

      t.timestamps
    end
  end
end
