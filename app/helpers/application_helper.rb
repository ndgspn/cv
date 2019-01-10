module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(hard_wrap: true), space_after_headers: true, autolink: true, strikethrough: true, superscript: true, underline: true).render(text).html_safe
  end
end
