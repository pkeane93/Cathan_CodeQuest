module ApplicationHelper

  def show_navbar?
    !(controller_name == "pages" && action_name == "home")
  end

  def show_footer_middle?
    !(controller_name == "posts" && action_name == "index")
  end
end
