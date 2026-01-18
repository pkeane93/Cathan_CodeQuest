module ApplicationHelper

  def show_navbar?
    return false if controller_name == "pages" && action_name == "home"
    return false if devise_controller?
    true
  end

  def show_footer_middle?
    if controller_name == "posts" && (action_name == "index" || action_name == "new" || action_name == "create")
      false
    else
      true
    end
  end
end
