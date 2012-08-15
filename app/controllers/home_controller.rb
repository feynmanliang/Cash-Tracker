class HomeController < ApplicationController
  def index
    if current_user
      redirect_to transactions_path
    end
  end
end
