class PostsController < ApplicationController
  def index
    @posts      = Post.paginate(per_page: 2, page: params[:page]).ordered
  end

  def show
    @post       = Post.friendly.find params[:id]
  end
end
