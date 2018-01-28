class QuoteRequestItemStoragesController < ApplicationController
  before_action :set_quote_request_item_storage, only: [:show, :edit, :update, :destroy]

  # GET /quote_request_item_storages
  # GET /quote_request_item_storages.json
  def index
    @quote_request_item_storages = QuoteRequestItemStorage.all
  end

  # GET /quote_request_item_storages/1
  # GET /quote_request_item_storages/1.json
  def show
  end

  # GET /quote_request_item_storages/new
  def new
    @quote_request_item_storage = QuoteRequestItemStorage.new
  end

  # GET /quote_request_item_storages/1/edit
  def edit
  end

  # POST /quote_request_item_storages
  # POST /quote_request_item_storages.json
  def create
    @quote_request_item_storage = QuoteRequestItemStorage.new(quote_request_item_storage_params)

    respond_to do |format|
      if @quote_request_item_storage.save
        format.html { redirect_to @quote_request_item_storage, notice: 'Quote request item storage was successfully created.' }
        format.json { render :show, status: :created, location: @quote_request_item_storage }
      else
        format.html { render :new }
        format.json { render json: @quote_request_item_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_request_item_storages/1
  # PATCH/PUT /quote_request_item_storages/1.json
  def update
    respond_to do |format|
      if @quote_request_item_storage.update(quote_request_item_storage_params)
        format.html { redirect_to @quote_request_item_storage, notice: 'Quote request item storage was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote_request_item_storage }
      else
        format.html { render :edit }
        format.json { render json: @quote_request_item_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_request_item_storages/1
  # DELETE /quote_request_item_storages/1.json
  def destroy
    @quote_request_item_storage.destroy
    respond_to do |format|
      format.html { redirect_to quote_request_item_storages_url, notice: 'Quote request item storage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_request_item_storage
      @quote_request_item_storage = QuoteRequestItemStorage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_request_item_storage_params
      params.require(:quote_request_item_storage).permit(:name, :description, :capacity, :backup_size, :quote_request_item_server_id)
    end
end
