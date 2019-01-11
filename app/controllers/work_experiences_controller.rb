class WorkExperiencesController < ApplicationController
  def index
    @work_experiences  = WorkExperience.ordered
  end
end
