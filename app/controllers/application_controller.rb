class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def category
    @categories = Category.all
  end
end
