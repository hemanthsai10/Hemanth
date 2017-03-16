class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
		t.integer :pin_no, :limit => 8
    	t.string :section
    	t.string :name
    	t.float :cgpa
        t.float :i_sem
        t.float :ii_sem
        t.float :iii_sem
        t.float :iv_sem
        t.float :v_sem
        t.float :vi_sem
        t.float :vii_sem
        t.float :viii_sem
        t.float :i_sem_attd
        t.float :ii_sem_attd
        t.float :iii_sem_attd
        t.float :iv_sem_attd
        t.float :v_sem_attd
        t.float :vi_sem_attd
        t.float :vii_sem_attd
        t.float :viii_sem_attd
    	t.string :sub1_name
    	t.float :sub1_mid1
    	t.float :sub1_mid2
    	t.float :sub1_mid3
    	t.float :sub1_avg
    	t.float :sub1_asign
    	t.float :sub1_Total
    	t.string :sub2_name
    	t.float :sub2_mid1
    	t.float :sub2_mid2
    	t.float :sub2_mid3
    	t.float :sub2_avg
    	t.float :sub2_asign
    	t.float :sub2_Total
        t.string :sub3_name
        t.float :sub3_mid1
        t.float :sub3_mid2
        t.float :sub3_mid3
        t.float :sub3_avg
        t.float :sub3_asign
        t.float :sub3_Total
        t.string :sub4_name
        t.float :sub4_mid1
        t.float :sub4_mid2
        t.float :sub4_mid3
        t.float :sub4_avg
        t.float :sub4_asign
        t.float :sub4_Total
        t.string :sub5_name
        t.float :sub5_mid1
        t.float :sub5_mid2
        t.float :sub5_mid3
        t.float :sub5_avg
        t.float :sub5_asign
        t.float :sub5_Total
        t.string :sub6_name
        t.float :sub6_mid1
        t.float :sub6_mid2
        t.float :sub6_mid3
        t.float :sub6_avg
        t.float :sub6_asign
        t.float :sub6_Total
        t.string :sub7_name
        t.float :sub7_mid1
        t.float :sub7_mid2
        t.float :sub7_mid3
        t.float :sub7_avg
        t.float :sub7_asign
        t.float :sub7_Total
    	t.integer :parent_cont_no, :limit => 8
        t.string :parent_mail_id
        t.string :amc_name
        t.integer :amc_cont_no
        t.string :student_mail_id
        t.integer :student_cont_no, :limit => 8
        t.string :placement_status
        t.string :placed_in
        t.float :sal_package_in_lakhs
        t.float :ssc
        t.float :inter
        t.string :intermidiate_college_name
        t.string :location
        t.string :city
    	t.timestamps
    end
  end
end
