module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "SoYo"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def header_to_use()
  	if current_page?(root_path)
  		render 'layouts/headers/header_home'
  	else
  		render 'layouts/headers/header_site'
  	end
  end
end
