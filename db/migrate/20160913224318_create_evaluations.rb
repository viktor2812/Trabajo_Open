class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
 		t.string :repuve
 		t.string :rapi
 		t.string :amis
 		t.string :transunion
 		t.string :ci_auto
 		t.string :agency_invoice_ok 
 		t.string :ine_ok
 		t.string :buho_ok
 		t.string :invoice_sat_ok
      t.timestamps null: false
    end
  end
end
# :repuve, :rapi, :amis, :transunion, :ci_auto, :agency_invoice_ok , :ine_ok, :buho_ok, :invoice_sat_ok