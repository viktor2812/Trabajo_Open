class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.string   :company_name
    	t.string   :company_rfc
    	t.string   :company_address 
    	t.integer :company_ext_num
    	t.integer :company_int_num
    	t.string   :company_neighborhood
    	t.string   :company_city 
    	t.integer :company_zip
    	t.integer :company_telephone
    	t.integer :company_extension

      t.timestamps null: false
    end
  end
end
