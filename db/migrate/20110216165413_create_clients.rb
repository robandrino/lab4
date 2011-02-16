class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
		      t.integer :id
			  t.text :name
			  t.text :adress
			  t.string :nit, :limit => 255

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
