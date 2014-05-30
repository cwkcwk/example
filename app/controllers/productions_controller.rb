class ProductionsController < ApplicationController
  def index
    @articles = Article.published
  end

  def article
    @article = Article.find_by(link: params[:link])
  end

end