class HomeController < ApplicationController
  def index
  end

  def game
    @left = (1..90).to_a.sample
    @top = (1..90).to_a.sample
    @score = params[:score].to_i

    respond_to do |format|
      format.html
      format.js
    end
  end
end
