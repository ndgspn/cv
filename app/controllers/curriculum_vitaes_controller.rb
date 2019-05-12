class CurriculumVitaesController < ApplicationController
  layout 'curriculum_vitaes'
  def index
    @work_experiences  = WorkExperience.ordered
    @users             = User.all
    @formal_educations = FormalEducation.ordered
    @expertises        = Expertise.ordered
  end
end
