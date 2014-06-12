class ApiController < ApplicationController
  def NewScoring
    # find user by token
    raise "error" unless user = User.find_by_token(params[:token])
    row = Ranking.find_by_user_id(user.id)
    unless row
      row = Ranking.new
      row.user_id = user.id
      row.games_played = 0
      row.kills = 0
      row.bombs = 0
    end

    row.games_played += 1
    row.kills += params[:kills].to_i
    row.bombs += params[:bombs].to_i
    row.ratio = row.kills / row.games_played
    row.save
  end
end
