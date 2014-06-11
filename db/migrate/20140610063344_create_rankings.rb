class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.string :name
      t.decimal :games_played
      t.decimal :kills
      t.decimal :bombs
      t.decimal :ratio

      t.timestamps
    end
  end
end
