class CategoriesController < ApplicationController
  before_action :user_signed_in?, except: [:index, :show]

  def index
    @categories = Category.order(id: :desc)
  end

  def show
    @category          = Category.friendly.find(params[:id])
    @posts_by_category = @category.posts.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    return redirect_to categories_path if @category.save
    render status: 402, json: { message: @category.errors }
  end

  def edit
    @category = Category.friendly.find(params[:id])
  end

  def update
    @category = Category.friendly.find(params[:id])
    return redirect_to categories_path if @category.update(category_params)
    render status: 402, json: { message: @category.errors }
  end

  def destroy
    @category = Category.friendly.find(params[:id])
    return redirect_to categories_path if @category.destroy
    render status: 500, json: { message: @category.errors }
  end

  private
  def category_params
    params.require(:category).permit(:name, :description)
  end
end
