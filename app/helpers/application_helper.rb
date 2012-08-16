module ApplicationHelper
  def sign_in_out_link
    if not current_user
      link_to "Log In", "/auth/facebook"
    else
      link_to "Log Out", signout_path
    end
  end

  def real_currency(number)
    number_to_currency(number,:delimiter => ".", :unit => "$ ",:separator => ".")
  end
end
