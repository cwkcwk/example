module Prv
  class CategoriesController < RootController

    before_action :set_prv_category, only: [:show, :edit, :update, :destroy, :order_position]

    # GET /prv/categories
    # GET /prv/categories.json
    def index
      @prv_categories = Category.ordered
    end

    # GET /prv/categories/1
    # GET /prv/categories/1.json
    def show
    end

    # GET /prv/categories/new
    def new
      @prv_category = Category.new
    end

    # GET /prv/categories/1/edit
    def edit
    end

    def order_position

      position = 0

      position = @prv_category.order_id + 1 if params[:to] == 'up'
      position = @prv_category.order_id - 1 if params[:to] == 'down'
      @prv_category.update_attribute(:order_id, position)

      redirect_to action: :index
    end

    # POST /prv/categories
    # POST /prv/categories.json
    def create
      @prv_category = Category.new(prv_category_params)

      respond_to do |format|
        if @prv_category.save
          format.html { redirect_to prv_categories_path, notice: 'Category was successfully created.' }
          format.json { render action: 'show', status: :created, location: @prv_category }
        else
          format.html { render action: 'new' }
          format.json { render json: @prv_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /prv/categories/1
    # PATCH/PUT /prv/categories/1.json
    def update
      respond_to do |format|
        if @prv_category.update(prv_category_params)
          format.html { redirect_to prv_categories_path, notice: 'Category was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @prv_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /prv/categories/1
    # DELETE /prv/categories/1.json
    def destroy
      @prv_category.destroy
      respond_to do |format|
        format.html { redirect_to prv_categories_url }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_prv_category
      @prv_category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prv_category_params
      params.require(:category).permit(:name, :is_active, :image, :description)
    end
  end
end
