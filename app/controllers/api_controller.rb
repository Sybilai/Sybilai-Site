class ApiController < ApplicationController
  def NewScoring
   Score.create(name: params[:name], scoring: params[:scoring])
  end
end
