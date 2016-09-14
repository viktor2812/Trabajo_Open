class CreateMotors < ActiveRecord::Migration
  def change
    create_table :motors do |t|
    	t.string  :brand
    	t.string  :model
    	t.integer :year 
    	t.string  :serie_chasis 
    	t.string  :serie_engine
    	t.string  :commercial_cost
      t.timestamps null: false
    end
  end
end
