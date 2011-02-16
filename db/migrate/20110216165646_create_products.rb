class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
		      t.text :nombre
			  t.integer :id
			  t.string :code, :limit => 255
			  t.float :price
			  t.text :description
			  t.integer :product_id
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
