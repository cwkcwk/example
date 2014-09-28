class CatalogsController < ApplicationController
  def index
    @categories = Category.active.ordered
  end

  def items
    @items = Category.find_by(link: params['category_name']).items.ordered
  end

  def good
    @good = Item.find_by(link: params[:link])
  end

  def search
    if params[:search_str].present?
      @items = Item.search(params)

      render action: :items
    else
      redirect_to catalogs_path
    end
  end

  def autocomplete
    render json: @items = Item.pluck(:title)
  end
end

