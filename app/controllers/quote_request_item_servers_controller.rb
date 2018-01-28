class QuoteRequestItemServersController < ApplicationController
  before_action :set_quote_request_item_server, only: [:show, :edit, :update, :destroy]

  # GET /quote_request_item_servers
  # GET /quote_request_item_servers.json
  def index
    @quote_request_item_servers = QuoteRequestItemServer.all
  end

  # GET /quote_request_item_servers/1
  # GET /quote_request_item_servers/1.json
  def show
  end

  # GET /quote_request_item_servers/new
  def new
    @quote_request_item_server = QuoteRequestItemServer.new
  end

  # GET /quote_request_item_servers/1/edit
  def edit
  end

  # POST /quote_request_item_servers
  # POST /quote_request_item_servers.json
  def create
    @quote_request_item_server = QuoteRequestItemServer.new(quote_request_item_server_params)

    respond_to do |format|
      if @quote_request_item_server.save
        format.html { redirect_to @quote_request_item_server, notice: 'Quote request item server was successfully created.' }
        format.json { render :show, status: :created, location: @quote_request_item_server }
      else
        format.html { render :new }
        format.json { render json: @quote_request_item_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_request_item_servers/1
  # PATCH/PUT /quote_request_item_servers/1.json
  def update
    respond_to do |format|
      if @quote_request_item_server.update(quote_request_item_server_params)
        format.html { redirect_to @quote_request_item_server, notice: 'Quote request item server was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote_request_item_server }
      else
        format.html { render :edit }
        format.json { render json: @quote_request_item_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_request_item_servers/1
  # DELETE /quote_request_item_servers/1.json
  def destroy
    @quote_request_item_server.destroy
    respond_to do |format|
      format.html { redirect_to quote_request_item_servers_url, notice: 'Quote request item server was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_request_item_server
      @quote_request_item_server = QuoteRequestItemServer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_request_item_server_params
      params.require(:quote_request_item_server).permit(:required_cpu, :required_ram, :quote_request_item_id)
    end
end
