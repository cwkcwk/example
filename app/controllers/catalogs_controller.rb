class CatalogsController < ApplicationController
  def index
    @categories = Category.active.ordered
  end

  def items
    @items = Category.find_by(link: params['category_name']).items

  end

  def good
    @good = Item.find_by(link: params[:link])
  end
end

