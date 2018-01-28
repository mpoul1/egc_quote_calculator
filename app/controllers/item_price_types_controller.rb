class ItemPriceTypesController < ApplicationController
  before_action :set_item_price_type, only: [:show, :edit, :update, :destroy]

  # GET /item_price_types
  # GET /item_price_types.json
  def index
    @item_price_types = ItemPriceType.all
  end

  # GET /item_price_types/1
  # GET /item_price_types/1.json
  def show
  end

  # GET /item_price_types/new
  def new
    @item_price_type = ItemPriceType.new
  end

  # GET /item_price_types/1/edit
  def edit
  end

  # POST /item_price_types
  # POST /item_price_types.json
  def create
    @item_price_type = ItemPriceType.new(item_price_type_params)

    respond_to do |format|
      if @item_price_type.save
        format.html { redirect_to @item_price_type, notice: 'Item price type was successfully created.' }
        format.json { render :show, status: :created, location: @item_price_type }
      else
        format.html { render :new }
        format.json { render json: @item_price_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_price_types/1
  # PATCH/PUT /item_price_types/1.json
  def update
    respond_to do |format|
      if @item_price_type.update(item_price_type_params)
        format.html { redirect_to @item_price_type, notice: 'Item price type was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_price_type }
      else
        format.html { render :edit }
        format.json { render json: @item_price_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_price_types/1
  # DELETE /item_price_types/1.json
  def destroy
    @item_price_type.destroy
    respond_to do |format|
      format.html { redirect_to item_price_types_url, notice: 'Item price type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_price_type
      @item_price_type = ItemPriceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_price_type_params
      params.require(:item_price_type).permit(:name, :description, :active, :item_price_id)
    end
end
