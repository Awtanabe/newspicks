class ArticlesController < ApplicationController
  def index
  end

  def show
    @articles = Article.new
    @picks = @article.picks.new
    # @article = Article.find(params[:id])
    # @picks = @article.picks.include(:user)
  end
end
