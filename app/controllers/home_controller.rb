class HomeController < ApplicationController
  def index
    flash[:notice_home] = t(:hello_flash)
  end
end
