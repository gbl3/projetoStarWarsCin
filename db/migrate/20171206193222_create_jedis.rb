class CreateJedis < ActiveRecord::Migration[5.1]
  def change
    create_table :jedis, {:id => false} do |t|
      t.string :id_usuario_j, primary_key: true
      t.string :ordem
      t.string :classe_jedi
      t.string :idade

      t.timestamps
    end
  end
end
