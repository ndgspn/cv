class ProfilesController < ApplicationController
  def index
    @posts = Post.ordered
  end
end
