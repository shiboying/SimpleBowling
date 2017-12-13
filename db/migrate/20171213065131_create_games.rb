class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :player_id
      t.string :one_first
      t.string :one_second
      t.string :two_first
      t.string :two_second
      t.string :three_first
      t.string :three_second
      t.string :four_first
      t.string :four_second
      t.string :five_first
      t.string :five_second
      t.string :six_first
      t.string :six_second
      t.string :seven_first
      t.string :seven_second
      t.string :eight_first
      t.string :eight_second
      t.string :nine_first
      t.string :nine_second
      t.string :ten_first
      t.string :ten_second
      t.string :ten_third
      t.string :final_score

      t.timestamps
    end
  end
end
