class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_param)
    @game.player_id = Player.last.id
    if @game.valid?
      @game.save!
      redirect_to games_path
    else
      render action: :new
    end
  end

  private

  def game_param
    params
    .require(:game)
      .permit(
        :one_first,
        :one_second,
        :two_first,
        :two_second,
        :three_first,
        :three_second,
        :four_first,
        :four_second,
        :five_first,
        :five_second,
        :six_first,
        :six_second,
        :seven_first,
        :seven_second,
        :eight_first,
        :eight_second,
        :nine_first,
        :nine_second,
        :ten_first,
        :ten_second,
        :ten_third,
        :final_score
      )
  end
end
