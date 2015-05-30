class StudentsController < ApplicationController
  load_and_authorize_resource
  
  before_action :set_student, only: [:show, :edit, :update, :destroy, :progress]
  before_action :get_group, only: [:index, :create, :new]
  #before_action :remove_photo, only: :update
  
  # GET /students
  # GET /students.json
  def index
    @students = @group.students
  end

  # GET /students/all
  # GET /students/all.json
  def all
    @students = Student.all
    render "students/index"
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /groups/:id/students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    @student.group = @group

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Студент успшешно добавлен.' }
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
        format.html { redirect_to @student, notice: 'Студент успешно изменен.' }
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
      format.html { redirect_to students_url, notice: 'Студент успешно удален.' }
      format.json { head :no_content }
      # format.js
    end
  end

  def progress
    @disciplines = @student.group.disciplines.uniq(&:id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    def get_group
      @group = Group.find(params[:group_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit!
    end

    #def remove_photo
    #  if @student.photo.file?
    #    @student.photo = nil
    #    @student.save
    #  end
    #end
end
