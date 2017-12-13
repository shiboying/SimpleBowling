class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_param)
    if @player.valid?
      @player.save!
      redirect_to new_game_path
    else
      render action: :new
    end
  end

  private

  def player_param
    params.require(:player).permit(:name)
  end
end
