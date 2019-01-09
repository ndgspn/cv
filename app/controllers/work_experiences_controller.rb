class WorkExperiencesController < ApplicationController
  def index
    @work_experiences   = WorkExperience.order(id: :desc)
  end
end
