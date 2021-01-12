class CreateCustomerDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_details do |t|
    	t.date				:open_date
    	t.belongs_to 	:user, index: true
    	t.string			:customer_name
    	t.string			:branch
    	t.boolean   	:indicator, default: false 
      t.timestamps
    end
  end
end
