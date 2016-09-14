class CreateEmployees < ActiveRecord::Migration
  def change
    create_table  :employees do |t|
    	t.string  :name
    	t.string  :surname
    	t.string  :rfc
    	t.string  :address
    	t.integer :ext_num
    	t.integer :int_num
    	t.string  :neighborhood
    	t.string  :city
    	t.string  :country
    	t.integer :zip

      t.timestamps null: false
    end
  end
end
