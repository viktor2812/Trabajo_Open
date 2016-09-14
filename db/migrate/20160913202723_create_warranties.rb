class CreateWarranties < ActiveRecord::Migration
  def change
    create_table :warranties do |t|
    	t.string :tipo_warranty
      t.timestamps null: false
    end
  end
end
