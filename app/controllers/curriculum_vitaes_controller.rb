class CurriculumVitaesController < ApplicationController
  def index
    @work_experiences  = WorkExperience.ordered
    @users             = User.all
    @formal_educations = FormalEducation.ordered
  end
end
