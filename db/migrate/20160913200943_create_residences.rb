class CreateResidences < ActiveRecord::Migration
  def change
    create_table :residences do |t|
    	t.string :description 
    	t.integer :year 
    	t.string :street 
    	t.integer :ext_numb 
    	t.integer :int_numb 
    	t.string :neighborhood 
    	t.string :city 
    	t.integer :zip 
    	t.integer :commercial_cost
      t.timestamps null: false
    end
  end
end