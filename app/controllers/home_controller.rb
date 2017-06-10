class HomeController < ApplicationController
  def index
    @mountains = Mountain.all
    @users_mountains = []

    @mountains.each do |mountain|
      if mountain.ability == current_user.ability
        @users_mountains << mountain
      end
    end
  end
end
