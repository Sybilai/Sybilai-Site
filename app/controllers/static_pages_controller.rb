class StaticPagesController < ApplicationController
  def Home
  	   render :layout => false
  end
  
	def Games
	end

  def Ranking
  	@rankings = Ranking.all
  end
end
