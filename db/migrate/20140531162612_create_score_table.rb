class CreateScoreTable < ActiveRecord::Migration
  def change
    create_table :score_tables do |t|
      t.string :user_id
      t.string :ai_name
      t.string :game_id
      t.string :score
    end
  end
end
