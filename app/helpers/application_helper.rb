module ApplicationHelper

  # Retorna uma tag img contendo a Logo.png do aplicativo
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end

  # Return a title on a per-page basis.
  def title
    base_title = "SampleApp"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
