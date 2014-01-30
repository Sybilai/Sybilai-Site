class StaticPagesController < ApplicationController
  def Home
  end

  def GlobalRanking
	@scorings = Score.order(scoring: :desc)
	
  end

  def LocalRanking
  end

  def Pong
  end

  def Documentation
  end
end
