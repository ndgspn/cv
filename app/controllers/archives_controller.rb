class ArchivesController < ApplicationController
  def index
    @monthly_posts_archive = Post.monthly_archive
  end
end
