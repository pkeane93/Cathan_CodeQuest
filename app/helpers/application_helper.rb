module ApplicationHelper

  def show_navbar?
    !(controller_name == "pages" && action_name == "home")
  end

end
