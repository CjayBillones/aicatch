module ApplicationHelper

  def logged_in_user
    unless logged_in?
      flash[:error] = "You must login to access this page"
      redirect_to login_path
    end
  end

  def logged_out
    unless !logged_in?
      flash[:info] = "You are already logged in!"
      redirect_to root_path
    end
  end

  def flash_class(level)
    case level
    when "success" then "ui success message"
    when "error" then "ui error message"
    when "info" then "ui info message"
    when "warning" then "ui warning message"
    end
  end

end
