class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.where(username: params[:username]).first
    @activities = @player.activities
    # @comrades = @player.comrades # Friended initially, @player.id == @comrade.player_id
    @comrades = Comrade.where("player_id = #{@player.id} AND accepted = 't' OR comrade_id = #{@player.id} AND accepted = 't'")
    @comrade_requests = Comrade.where("comrade_id = #{@player.id} AND accepted = 'f'")
  end
end
