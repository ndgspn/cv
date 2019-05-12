class ExpertisesController < ApplicationController
  before_action :user_signed_in?

  def index
    @expertises  = Expertise.ordered
  end

  def new
    @expertise = Expertise.new
  end

  def create
    @expertise = Expertise.new(expertise_params)
    @expertise.user = User.first

    return redirect_to expertises_path if @expertise.save
    render status: 402, json: { message: @expertise.errors }
  end

  def edit
    @expertise = Expertise.find(params[:id])
  end

  def update
    @expertise = Expertise.find(params[:id])
    return redirect_to expertises_path if @expertise.update(expertise_params)
    render status: 402, json: { message: @expertise.errors }
  end

  def destroy
    @expertise = Expertise.find(params[:id])
    return redirect_to expertises_path if @expertise.destroy
    render status: 500, json: { message: @expertise.errors }
  end

  private
  def expertise_params
    params.require(:expertise).permit(:name, :level)
  end
end
