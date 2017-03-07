class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
		t.integer :pin_num
    	t.string :name
    	t.integer :A
    	t.integer :B
    	t.integer :C
    	t.timestamps
    end
  end
end
