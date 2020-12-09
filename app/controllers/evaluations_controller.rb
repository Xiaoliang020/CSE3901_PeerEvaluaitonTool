class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /evaluations
  # GET /evaluations.json
  def index
    @evaluations = Evaluation.all
    @user = User.find(session[:user_id])
    @student = Student.find_by_user_id(@user.id)
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
  end

  # GET /evaluations/new
  def new
    @evaluation = Evaluation.new
    @projects = Project.all
    @student_groups = StudentGroup.all
    @user = User.find(session[:user_id])
    @student = Student.find_by_user_id(@user.id)
    @students = Student.all
    @studentId = params[:studentId]
    @commentStudentId = params[:commentId]
  end

  # GET /evaluations/1/edit
  def edit
    @projects = Project.all
    @student_groups = StudentGroup.all
    @user = User.find(session[:user_id])
    @student = Student.find_by_user_id(@user.id)
    @students = Student.all
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(evaluation_params)
    @projects = Project.all
    @student_groups = StudentGroup.all
    @user = User.find(session[:user_id])
    @student = Student.find_by_user_id(@user.id)
    @students = Student.all

    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation }
      else
        format.html { render :new }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    @projects = Project.all
    @student_groups = StudentGroup.all
    @user = User.find(session[:user_id])
    @student = Student.find_by_user_id(@user.id)
    @students = Student.all

    respond_to do |format|
      if @evaluation.update(evaluation_params)
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation }
      else
        format.html { render :edit }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_url, notice: 'Evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluation_params
      params.require(:evaluation).permit(:score, :comment, :project_id, :student_group_id, :student_id, :comment_student)
    end
end
