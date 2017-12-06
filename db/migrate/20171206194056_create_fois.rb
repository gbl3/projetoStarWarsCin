class CreateFois < ActiveRecord::Migration[5.1]
  def change
    create_table :fois, {:id => false} do |t|
      t.string :id_usuario_m_sith
      t.string :id_usuario_j

      t.timestamps
    end
  end
end
