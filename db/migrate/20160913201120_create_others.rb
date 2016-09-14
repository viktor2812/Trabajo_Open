class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
    	t.string :description
      t.timestamps null: false
    end
  end
end
