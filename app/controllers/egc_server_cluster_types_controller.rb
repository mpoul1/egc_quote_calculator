class EgcServerClusterTypesController < ApplicationController
  before_action :set_egc_server_cluster_type, only: [:show, :edit, :update, :destroy]

  # GET /egc_server_cluster_types
  # GET /egc_server_cluster_types.json
  def index
    @egc_server_cluster_types = EgcServerClusterType.all
  end

  # GET /egc_server_cluster_types/1
  # GET /egc_server_cluster_types/1.json
  def show
  end

  # GET /egc_server_cluster_types/new
  def new
    @egc_server_cluster_type = EgcServerClusterType.new
  end

  # GET /egc_server_cluster_types/1/edit
  def edit
  end

  # POST /egc_server_cluster_types
  # POST /egc_server_cluster_types.json
  def create
    @egc_server_cluster_type = EgcServerClusterType.new(egc_server_cluster_type_params)

    respond_to do |format|
      if @egc_server_cluster_type.save
        format.html { redirect_to @egc_server_cluster_type, notice: 'Egc server cluster type was successfully created.' }
        format.json { render :show, status: :created, location: @egc_server_cluster_type }
      else
        format.html { render :new }
        format.json { render json: @egc_server_cluster_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egc_server_cluster_types/1
  # PATCH/PUT /egc_server_cluster_types/1.json
  def update
    respond_to do |format|
      if @egc_server_cluster_type.update(egc_server_cluster_type_params)
        format.html { redirect_to @egc_server_cluster_type, notice: 'Egc server cluster type was successfully updated.' }
        format.json { render :show, status: :ok, location: @egc_server_cluster_type }
      else
        format.html { render :edit }
        format.json { render json: @egc_server_cluster_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egc_server_cluster_types/1
  # DELETE /egc_server_cluster_types/1.json
  def destroy
    @egc_server_cluster_type.destroy
    respond_to do |format|
      format.html { redirect_to egc_server_cluster_types_url, notice: 'Egc server cluster type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egc_server_cluster_type
      @egc_server_cluster_type = EgcServerClusterType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egc_server_cluster_type_params
      params.require(:egc_server_cluster_type).permit(:name, :description, :quote_request_item_server_id, :egc_server_type_id)
    end
end
