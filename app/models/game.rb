class Game < ActiveRecord::Base
  has_one :player

  def player_name
    Player.find(self.player_id).name
  end
end
