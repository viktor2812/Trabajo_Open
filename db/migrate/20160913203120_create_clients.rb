class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :tipo_client
      t.timestamps null: false
    end
  end
end
