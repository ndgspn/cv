class ArchivesController < ApplicationController
  def index
    @posts_archive = Post.monthly_archive
  end
end
