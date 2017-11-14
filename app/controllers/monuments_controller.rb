class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
  end

  def upvote
    @monument = Monument.find(params[:id])
    if current_user.voted_for? @product
      current_user.unvote_for @product
    else
      current_user.up_votes @product
    end
  end
end
