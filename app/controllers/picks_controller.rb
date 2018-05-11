class PicksController < ApplicationController
  def index
    @pick = Pick.new
  end

  def create
    @pick = Pick.create(comment: pick_params[:comment], article_id: pick_params[:article_id], user_id: current_user.id)
    redirect_to "/articles/#{@picks.article.id}/picks"
  end

  private
  def pick_params
    params.permit(:comment, :article_id)
  end
end