class HwTypesController < ApplicationController
  before_action :set_hw_type, only: [:show, :edit, :update, :destroy]

  # GET /hw_types
  # GET /hw_types.json
  def index
    @hw_types = HwType.all
  end

  # GET /hw_types/1
  # GET /hw_types/1.json
  def show
  end

  # GET /hw_types/new
  def new
    @hw_type = HwType.new
  end

  # GET /hw_types/1/edit
  def edit
  end

  # POST /hw_types
  # POST /hw_types.json
  def create
    @hw_type = HwType.new(hw_type_params)

    respond_to do |format|
      if @hw_type.save
        format.html { redirect_to @hw_type, notice: 'Hw type was successfully created.' }
        format.json { render :show, status: :created, location: @hw_type }
      else
        format.html { render :new }
        format.json { render json: @hw_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hw_types/1
  # PATCH/PUT /hw_types/1.json
  def update
    respond_to do |format|
      if @hw_type.update(hw_type_params)
        format.html { redirect_to @hw_type, notice: 'Hw type was successfully updated.' }
        format.json { render :show, status: :ok, location: @hw_type }
      else
        format.html { render :edit }
        format.json { render json: @hw_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hw_types/1
  # DELETE /hw_types/1.json
  def destroy
    @hw_type.destroy
    respond_to do |format|
      format.html { redirect_to hw_types_url, notice: 'Hw type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hw_type
      @hw_type = HwType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hw_type_params
      params.require(:hw_type).permit(:name, :description, :egc_server_type_id)
    end
end
