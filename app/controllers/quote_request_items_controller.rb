class QuoteRequestItemsController < ApplicationController
  before_action :set_quote_request_item, only: [:show, :edit, :update, :destroy]

  # GET /quote_request_items
  # GET /quote_request_items.json
  def index
    @quote_request_items = QuoteRequestItem.all
  end

  # GET /quote_request_items/1
  # GET /quote_request_items/1.json
  def show
  end

  # GET /quote_request_items/new
  def new
    @quote_request_item = QuoteRequestItem.new
  end

  # GET /quote_request_items/1/edit
  def edit
  end

  # POST /quote_request_items
  # POST /quote_request_items.json
  def create
    @quote_request_item = QuoteRequestItem.new(quote_request_item_params)

    respond_to do |format|
      if @quote_request_item.save
        format.html { redirect_to @quote_request_item, notice: 'Quote request item was successfully created.' }
        format.json { render :show, status: :created, location: @quote_request_item }
      else
        format.html { render :new }
        format.json { render json: @quote_request_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_request_items/1
  # PATCH/PUT /quote_request_items/1.json
  def update
    respond_to do |format|
      if @quote_request_item.update(quote_request_item_params)
        format.html { redirect_to @quote_request_item, notice: 'Quote request item was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote_request_item }
      else
        format.html { render :edit }
        format.json { render json: @quote_request_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_request_items/1
  # DELETE /quote_request_items/1.json
  def destroy
    @quote_request_item.destroy
    respond_to do |format|
      format.html { redirect_to quote_request_items_url, notice: 'Quote request item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_request_item
      @quote_request_item = QuoteRequestItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_request_item_params
      params.require(:quote_request_item).permit(:pieces, :description)
    end
end
