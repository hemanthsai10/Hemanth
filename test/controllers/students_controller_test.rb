require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { amc_cont_no: @student.amc_cont_no, amc_name: @student.amc_name, cgpa: @student.cgpa, city: @student.city, i_sem: @student.i_sem, i_sem_attd: @student.i_sem_attd, ii_sem: @student.ii_sem, ii_sem_attd: @student.ii_sem_attd, iii_sem: @student.iii_sem, iii_sem_attd: @student.iii_sem_attd, inter: @student.inter, intermidiate_college_name: @student.intermidiate_college_name, iv_sem: @student.iv_sem, iv_sem_attd: @student.iv_sem_attd, location: @student.location, name: @student.name, parent_cont_no: @student.parent_cont_no, parent_mail_id: @student.parent_mail_id, pin_no: @student.pin_no, placed_in: @student.placed_in, placement_status: @student.placement_status, sal_package_in_lakhs: @student.sal_package_in_lakhs, section: @student.section, ssc: @student.ssc, student_cont_no: @student.student_cont_no, student_mail_id: @student.student_mail_id, sub1_Total: @student.sub1_Total, sub1_asign: @student.sub1_asign, sub1_avg: @student.sub1_avg, sub1_mid1: @student.sub1_mid1, sub1_mid2: @student.sub1_mid2, sub1_mid3: @student.sub1_mid3, sub1_name: @student.sub1_name, sub2_Total: @student.sub2_Total, sub2_asign: @student.sub2_asign, sub2_avg: @student.sub2_avg, sub2_mid1: @student.sub2_mid1, sub2_mid2: @student.sub2_mid2, sub2_mid3: @student.sub2_mid3, sub2_name: @student.sub2_name, sub3_Total: @student.sub3_Total, sub3_asign: @student.sub3_asign, sub3_avg: @student.sub3_avg, sub3_mid1: @student.sub3_mid1, sub3_mid2: @student.sub3_mid2, sub3_mid3: @student.sub3_mid3, sub3_name: @student.sub3_name, sub4_Total: @student.sub4_Total, sub4_asign: @student.sub4_asign, sub4_avg: @student.sub4_avg, sub4_mid1: @student.sub4_mid1, sub4_mid2: @student.sub4_mid2, sub4_mid3: @student.sub4_mid3, sub4_name: @student.sub4_name, sub5_Total: @student.sub5_Total, sub5_asign: @student.sub5_asign, sub5_avg: @student.sub5_avg, sub5_mid1: @student.sub5_mid1, sub5_mid2: @student.sub5_mid2, sub5_mid3: @student.sub5_mid3, sub5_name: @student.sub5_name, sub6_Total: @student.sub6_Total, sub6_asign: @student.sub6_asign, sub6_avg: @student.sub6_avg, sub6_mid1: @student.sub6_mid1, sub6_mid2: @student.sub6_mid2, sub6_mid3: @student.sub6_mid3, sub6_name: @student.sub6_name, sub7_Total: @student.sub7_Total, sub7_asign: @student.sub7_asign, sub7_avg: @student.sub7_avg, sub7_mid1: @student.sub7_mid1, sub7_mid2: @student.sub7_mid2, sub7_mid3: @student.sub7_mid3, sub7_name: @student.sub7_name, v_sem: @student.v_sem, v_sem_attd: @student.v_sem_attd, vi_sem: @student.vi_sem, vi_sem_attd: @student.vi_sem_attd, vii_sem: @student.vii_sem, vii_sem_attd: @student.vii_sem_attd, viii_sem: @student.viii_sem, viii_sem_attd: @student.viii_sem_attd } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { amc_cont_no: @student.amc_cont_no, amc_name: @student.amc_name, cgpa: @student.cgpa, city: @student.city, i_sem: @student.i_sem, i_sem_attd: @student.i_sem_attd, ii_sem: @student.ii_sem, ii_sem_attd: @student.ii_sem_attd, iii_sem: @student.iii_sem, iii_sem_attd: @student.iii_sem_attd, inter: @student.inter, intermidiate_college_name: @student.intermidiate_college_name, iv_sem: @student.iv_sem, iv_sem_attd: @student.iv_sem_attd, location: @student.location, name: @student.name, parent_cont_no: @student.parent_cont_no, parent_mail_id: @student.parent_mail_id, pin_no: @student.pin_no, placed_in: @student.placed_in, placement_status: @student.placement_status, sal_package_in_lakhs: @student.sal_package_in_lakhs, section: @student.section, ssc: @student.ssc, student_cont_no: @student.student_cont_no, student_mail_id: @student.student_mail_id, sub1_Total: @student.sub1_Total, sub1_asign: @student.sub1_asign, sub1_avg: @student.sub1_avg, sub1_mid1: @student.sub1_mid1, sub1_mid2: @student.sub1_mid2, sub1_mid3: @student.sub1_mid3, sub1_name: @student.sub1_name, sub2_Total: @student.sub2_Total, sub2_asign: @student.sub2_asign, sub2_avg: @student.sub2_avg, sub2_mid1: @student.sub2_mid1, sub2_mid2: @student.sub2_mid2, sub2_mid3: @student.sub2_mid3, sub2_name: @student.sub2_name, sub3_Total: @student.sub3_Total, sub3_asign: @student.sub3_asign, sub3_avg: @student.sub3_avg, sub3_mid1: @student.sub3_mid1, sub3_mid2: @student.sub3_mid2, sub3_mid3: @student.sub3_mid3, sub3_name: @student.sub3_name, sub4_Total: @student.sub4_Total, sub4_asign: @student.sub4_asign, sub4_avg: @student.sub4_avg, sub4_mid1: @student.sub4_mid1, sub4_mid2: @student.sub4_mid2, sub4_mid3: @student.sub4_mid3, sub4_name: @student.sub4_name, sub5_Total: @student.sub5_Total, sub5_asign: @student.sub5_asign, sub5_avg: @student.sub5_avg, sub5_mid1: @student.sub5_mid1, sub5_mid2: @student.sub5_mid2, sub5_mid3: @student.sub5_mid3, sub5_name: @student.sub5_name, sub6_Total: @student.sub6_Total, sub6_asign: @student.sub6_asign, sub6_avg: @student.sub6_avg, sub6_mid1: @student.sub6_mid1, sub6_mid2: @student.sub6_mid2, sub6_mid3: @student.sub6_mid3, sub6_name: @student.sub6_name, sub7_Total: @student.sub7_Total, sub7_asign: @student.sub7_asign, sub7_avg: @student.sub7_avg, sub7_mid1: @student.sub7_mid1, sub7_mid2: @student.sub7_mid2, sub7_mid3: @student.sub7_mid3, sub7_name: @student.sub7_name, v_sem: @student.v_sem, v_sem_attd: @student.v_sem_attd, vi_sem: @student.vi_sem, vi_sem_attd: @student.vi_sem_attd, vii_sem: @student.vii_sem, vii_sem_attd: @student.vii_sem_attd, viii_sem: @student.viii_sem, viii_sem_attd: @student.viii_sem_attd } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
