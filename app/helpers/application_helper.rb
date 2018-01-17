module ApplicationHelper

  def flash_class(level)
    case level
        when "notice" then "alert alert-info" # teal
        when "success" then "alert alert-success" # green
        when "error" then "alert alert-danger" # red
        when "alert" then "alert alert-warning" # yellow
    end
  end

end
