module ApplicationHelper

  def is_active?(image)
    if image.id == 15
      '.item.active'
    else
      '.item'
    end
  end

end
