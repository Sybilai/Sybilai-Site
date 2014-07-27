class StaticPagesController < ApplicationController
  def Home
  	   render :layout => false
  end
  
	def Games
    @top = Ranking.order("ratio DESC").limit(5)
    @stats = Ranking.select("sum(bombs) as bombs").select("sum(kills) as kills").select("sum(games_played) as sessions").first
	end

  def Ranking
  	@rankings = Ranking.all
  end
end
