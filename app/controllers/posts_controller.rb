class PostsController < ApplicationController
  def index
    @posts      = Post.paginated(params[:page]).ordered
  end

  def show
    @post       = Post.friendly.find(params[:id])
  end
end
