class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  def details
    puts "Just to check"
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find_by(:pin_no =>params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:pin_no, :section, :name, :cgpa, :i_sem, :ii_sem, :iii_sem, :iv_sem, :v_sem, :vi_sem, :vii_sem, :viii_sem, :i_sem_attd, :ii_sem_attd, :iii_sem_attd, :iv_sem_attd, :v_sem_attd, :vi_sem_attd, :vii_sem_attd, :viii_sem_attd, :sub1_name, :sub1_mid1, :sub1_mid2, :sub1_mid3, :sub1_avg, :sub1_asign, :sub1_Total, :sub2_name, :sub2_mid1, :sub2_mid2, :sub2_mid3, :sub2_avg, :sub2_asign, :sub2_Total, :sub3_name, :sub3_mid1, :sub3_mid2, :sub3_mid3, :sub3_avg, :sub3_asign, :sub3_Total, :sub4_name, :sub4_mid1, :sub4_mid2, :sub4_mid3, :sub4_avg, :sub4_asign, :sub4_Total, :sub5_name, :sub5_mid1, :sub5_mid2, :sub5_mid3, :sub5_avg, :sub5_asign, :sub5_Total, :sub6_name, :sub6_mid1, :sub6_mid2, :sub6_mid3, :sub6_avg, :sub6_asign, :sub6_Total, :sub7_name, :sub7_mid1, :sub7_mid2, :sub7_mid3, :sub7_avg, :sub7_asign, :sub7_Total, :parent_cont_no, :parent_mail_id, :amc_name, :amc_cont_no, :student_mail_id, :student_cont_no, :placement_status, :placed_in, :sal_package_in_lakhs, :ssc, :inter, :intermidiate_college_name, :location, :city)
    end
end
