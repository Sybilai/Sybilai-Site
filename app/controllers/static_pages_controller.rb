class StaticPagesController < ApplicationController
  def Home
  	   
  end
  
  def Ranking
  	@rankings = Ranking.all
  end
end
