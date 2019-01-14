class WorkExperiencesController < ApplicationController
  def index
    @work_experiences  = WorkExperience.ordered
  end

  def new
    @work_experience = WorkExperience.new
  end

  def create
    @work_experience = WorkExperience.new(work_experience_params)
    @work_experience.user = User.first

    return redirect_to work_experiences_path if @work_experience.save
    render status: 402, json: { message: @work_experience.errors }
  end

  def edit
    @work_experience = WorkExperience.find(params[:id])
  end

  def update
    @work_experience = WorkExperience.find(params[:id])
    return redirect_to work_experiences_path if @work_experience.update(work_experience_params)
    render status: 402, json: { message: @work_experience.errors }
  end

  def destroy
    @work_experience = WorkExperience.find(params[:id])
    return redirect_to work_experiences_path if @work_experience.destroy
    render status: 500, json: { message: @work_experience.errors }
  end

  private
  def work_experience_params
    params.require(:work_experience).permit(:job_title, :company, :start_date, :end_date)
  end
end
