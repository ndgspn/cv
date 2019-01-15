class FormalEducationsController < ApplicationController
  before_action :user_signed_in?

  def index
    @formal_educations = FormalEducation.all
  end

  def new
    @formal_education      = FormalEducation.new
  end

  def create
    @formal_education      = FormalEducation.new(formal_education_params)
    @formal_education.user = current_user

    return redirect_to formal_educations_path if @formal_education.save
    render status: 402, json: { message: @formal_education.errors }
  end

  def edit
    @formal_education = FormalEducation.find(params[:id])
  end

  def update
    @formal_education = FormalEducation.find(params[:id])

    return redirect_to formal_educations_path if @formal_education.update(formal_education_params)
    render status: 402, json: { message: @formal_education.errors }
  end

  def destroy
    @formal_education = FormalEducation.find(params[:id])
    return redirect_to formal_educations_path if @formal_education.destroy
    render status: 500, json: { message: 'Something wrong', errors: @formal_education.errors}
  end

  private
  def formal_education_params
    params.require(:formal_education).permit(:university_name, :major, :degree, :start_date, :end_date)
  end
end
