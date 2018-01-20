module ApplicationHelper

  def flash_class(level)
    case level
    when "success" then "ui success message"
    when "error" then "ui error message"
    when "info" then "ui info message"
    when "warning" then "ui warning message"
    end
  end

end
