class LandingController < ApplicationController
  def index
    # line added to avoid merge conflict with restaurant PR
    @menus = Menu.all
  end
end
