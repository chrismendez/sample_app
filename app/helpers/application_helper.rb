module ApplicationHelper

  # return a title on a per-page basis
  def title
    base_title = "Rails Tutorial"
    if @titile.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
