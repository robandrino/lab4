class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
		t.varchar :name
		t.integer :student_id
		t.boolean :status
		
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
