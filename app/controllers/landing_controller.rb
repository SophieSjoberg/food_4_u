class LandingController < ApplicationController
  def index

    @menus = Menu.all
  end
end
