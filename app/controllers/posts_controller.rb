class PostsController < ApplicationController
  before_action :user_signed_in?, only: [:new, :create, :edit, :update, :destroy]

  def index
    if params[:search]
      @posts = Post.search_post(params)
    else
      @posts = Post.ordered
    end
    @posts = @posts.paginated(params[:page])
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def new
    @post       = Post.new
    @categories = Category.all
  end

  def create
    @post       = Post.new(post_params)
    @post.user  = current_user
    @categories = Category.all

    return redirect_to posts_path if @post.save
    render status: 402, json: { message: @post.errors }
  end

  def edit
    @post       = Post.friendly.find(params[:id])
    @categories = Category.all
  end

  def update
    @post       = Post.friendly.find(params[:id])
    @categories = Category.all

    return render :new if @post.update(post_params)
    render status: 500, json: { message: @post.errors }
  end

  def destroy
    @post = Post.friendly.find(params[:id])
    return redirect_to posts_path if @post.destroy
    render status: 500, json: { message: @post.errors}
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :category_ids => [])
  end

end
