class VendorItemTypesController < ApplicationController
  before_action :set_vendor_item_type, only: [:show, :edit, :update, :destroy]

  # GET /vendor_item_types
  # GET /vendor_item_types.json
  def index
    @vendor_item_types = VendorItemType.all
  end

  # GET /vendor_item_types/1
  # GET /vendor_item_types/1.json
  def show
  end

  # GET /vendor_item_types/new
  def new
    @vendor_item_type = VendorItemType.new
  end

  # GET /vendor_item_types/1/edit
  def edit
  end

  # POST /vendor_item_types
  # POST /vendor_item_types.json
  def create
    @vendor_item_type = VendorItemType.new(vendor_item_type_params)

    respond_to do |format|
      if @vendor_item_type.save
        format.html { redirect_to @vendor_item_type, notice: 'Vendor item type was successfully created.' }
        format.json { render :show, status: :created, location: @vendor_item_type }
      else
        format.html { render :new }
        format.json { render json: @vendor_item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendor_item_types/1
  # PATCH/PUT /vendor_item_types/1.json
  def update
    respond_to do |format|
      if @vendor_item_type.update(vendor_item_type_params)
        format.html { redirect_to @vendor_item_type, notice: 'Vendor item type was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor_item_type }
      else
        format.html { render :edit }
        format.json { render json: @vendor_item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_item_types/1
  # DELETE /vendor_item_types/1.json
  def destroy
    @vendor_item_type.destroy
    respond_to do |format|
      format.html { redirect_to vendor_item_types_url, notice: 'Vendor item type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_item_type
      @vendor_item_type = VendorItemType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_item_type_params
      params.require(:vendor_item_type).permit(:name, :description, :vendor_item_id, :active, :quote_request_item_id)
    end
end
