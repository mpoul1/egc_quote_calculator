class CustomerTaxZonesController < ApplicationController
  before_action :set_customer_tax_zone, only: [:show, :edit, :update, :destroy]

  # GET /customer_tax_zones
  # GET /customer_tax_zones.json
  def index
    @customer_tax_zones = CustomerTaxZone.all
  end

  # GET /customer_tax_zones/1
  # GET /customer_tax_zones/1.json
  def show
  end

  # GET /customer_tax_zones/new
  def new
    @customer_tax_zone = CustomerTaxZone.new
  end

  # GET /customer_tax_zones/1/edit
  def edit
  end

  # POST /customer_tax_zones
  # POST /customer_tax_zones.json
  def create
    @customer_tax_zone = CustomerTaxZone.new(customer_tax_zone_params)

    respond_to do |format|
      if @customer_tax_zone.save
        format.html { redirect_to @customer_tax_zone, notice: 'Customer tax zone was successfully created.' }
        format.json { render :show, status: :created, location: @customer_tax_zone }
      else
        format.html { render :new }
        format.json { render json: @customer_tax_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_tax_zones/1
  # PATCH/PUT /customer_tax_zones/1.json
  def update
    respond_to do |format|
      if @customer_tax_zone.update(customer_tax_zone_params)
        format.html { redirect_to @customer_tax_zone, notice: 'Customer tax zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_tax_zone }
      else
        format.html { render :edit }
        format.json { render json: @customer_tax_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_tax_zones/1
  # DELETE /customer_tax_zones/1.json
  def destroy
    @customer_tax_zone.destroy
    respond_to do |format|
      format.html { redirect_to customer_tax_zones_url, notice: 'Customer tax zone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_tax_zone
      @customer_tax_zone = CustomerTaxZone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_tax_zone_params
      params.require(:customer_tax_zone).permit(:name, :description, :tax, :customer_id)
    end
end
