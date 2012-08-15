module ApplicationHelper
  def sign_in_out_link
    if not current_user
      link_to "Log in with Facebook", "/auth/facebook", class: "btn btn-primary"
    else
      link_to "Log Out", signout_path, class: "btn btn-primary"
    end
  end
end
