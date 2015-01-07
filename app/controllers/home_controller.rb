class HomeController < ApplicationController
  def index
    if player_signed_in?
      # TODO: include friends activities
      @activities = current_player.activities
    end
  end

  def about
  end
end
