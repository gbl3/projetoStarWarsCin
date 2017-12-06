class CreateUsuarioDaForcas < ActiveRecord::Migration[5.1]
  def change
    create_table :usuario_da_forcas, {:id => false} do |t|
      t.string :id_usuario, primary_key: true
      t.string :id_sabre
      t.string :planeta_origem
      t.string :nome_usuario
      t.date :data_nas

      t.timestamps
    end
  end
end
