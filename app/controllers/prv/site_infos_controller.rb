module Prv
  class SiteInfosController < RootController
    before_action :set_site_info, only: [:show, :edit, :update, :destroy]

    # GET /site_infos
    # GET /site_infos.json
    def index
      @site_infos = SiteInfo.all
    end

    # GET /site_infos/1
    # GET /site_infos/1.json
    def show
    end

    # GET /site_infos/new
    def new
      @site_info = SiteInfo.new
    end

    def info
      @site_info = SiteInfo.first_or_create
    end

    # GET /site_infos/1/edit
    def edit
    end

    # POST /site_infos
    # POST /site_infos.json
    def create
      @site_info = SiteInfo.new(site_info_params)

      respond_to do |format|
        if @site_info.save
          format.html { redirect_to info_prv_site_infos_path, notice: 'Site info was successfully created.' }
          format.json { render action: 'show', status: :created, location: @site_info }
        else
          format.html { render action: 'new' }
          format.json { render json: @site_info.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /site_infos/1
    # PATCH/PUT /site_infos/1.json
    def update
      respond_to do |format|
        if @site_info.update(site_info_params)
          format.html { redirect_to  info_prv_site_infos_path, notice: 'Site info was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @site_info.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /site_infos/1
    # DELETE /site_infos/1.json
    def destroy
      @site_info.destroy
      respond_to do |format|
        format.html { redirect_to prv_site_infos_url }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_info
      @site_info = SiteInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_info_params
      params.require(:site_info).permit(:main_text,
                                        :phone,
                                        :fax,
                                        :email,
                                        :address,
                                        :longitude,
                                        :latitude,
                                        :logo,
                                        :second_phone)
    end
  end
end
