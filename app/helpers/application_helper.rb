module ApplicationHelper
  def its_category(post)
    post.categories.map { |category| raw(link_to(category.name.capitalize, category_path(category))) }.join(' / ')
  end
end
