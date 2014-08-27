class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.where(username: params[:username]).first
  end
end
