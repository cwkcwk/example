module Prv
  class ItemsController < RootController
    before_action :set_prv_item, only: [:show, :edit, :update, :destroy, :change_order]

    # GET /prv/items
    # GET /prv/items.json
    def index
      @prv_items = Item.ordered
    end

    # GET /prv/items/1
    # GET /prv/items/1.json
    def show
    end

    # GET /prv/items/new
    def new
      @prv_item = Item.new
    end

    # GET /prv/items/1/edit
    def edit
    end

    # POST /prv/items
    # POST /prv/items.json
    def create
      @prv_item = Item.new(prv_item_params)

      respond_to do |format|
        if @prv_item.save
          format.html { redirect_to edit_prv_item_path(@prv_item), notice: 'Item was successfully created.' }
          format.json { render action: 'show', status: :created, location: @prv_item }
        else
          format.html { render action: 'new' }
          format.json { render json: @prv_item.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /prv/items/1
    # PATCH/PUT /prv/items/1.json
    def update
      respond_to do |format|
        if @prv_item.update(prv_item_params)
          format.html { redirect_to edit_prv_item_path(@prv_item), notice: 'Item was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @prv_item.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /prv/items/1
    # DELETE /prv/items/1.json
    def destroy
      @prv_item.destroy
      respond_to do |format|
        format.html { redirect_to prv_items_url }
        format.json { head :no_content }
      end
    end

    def change_order
      begin
        @prv_item.update_attribute(:order_id, @prv_item.order_id + params[:direction].to_i)
      rescue
        raise Exception => e
      end
      redirect_to action: :index

    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_prv_item
      @prv_item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prv_item_params
      params.require(:item).permit(:title,
                                   :category_id,
                                   :description,
                                   :order_id,
                                   :direction,
                                   item_attachments_attributes: [
                                       :id,
                                       :name,
                                       :image,
                                       :_destroy
                                   ],
                                   item_properties_attributes: [
                                       :id,
                                       :name,
                                       :property,
                                       :_destroy
                                   ],
                                   item_sizes_attributes: [
                                       :id,
                                       :scale,
                                       :_destroy,
                                       size_scales_attributes: [
                                           :id,
                                           :scale,
                                           :_destroy
                                       ]
                                   ])
    end
  end
end
