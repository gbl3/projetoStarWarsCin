class CreateUtilityDroids < ActiveRecord::Migration[5.1]
  def change
    create_table :utility_droids, {:id => false} do |t|
      t.string :id_fabricacao
      t.string :especialidade

      t.timestamps
    end
  end
end
