class CreateAprendizs < ActiveRecord::Migration[5.1]
  def change
    create_table :aprendizs, {:id => false} do |t|
      t.string :id_usuario_m
      t.string :id_usuario_a

      t.timestamps
    end
  end
end
