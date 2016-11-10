class FaucetsController < ApplicationController
  before_action :set_faucet, only: [:show, :edit, :update, :destroy]

  # GET /faucets
  # GET /faucets.json
  def index
    @faucets = Faucet.all
  end

  # GET /faucets/1
  # GET /faucets/1.json
  def show
  end

  # GET /faucets/new
  def new
    @faucet = Faucet.new
  end

  # GET /faucets/1/edit
  def edit
  end

  # POST /faucets
  # POST /faucets.json
  def create
    @faucet = Faucet.new(faucet_params)

    respond_to do |format|
      if @faucet.save
        format.html { redirect_to @faucet, notice: 'Faucet was successfully created.' }
        format.json { render :show, status: :created, location: @faucet }
      else
        format.html { render :new }
        format.json { render json: @faucet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faucets/1
  # PATCH/PUT /faucets/1.json
  def update
    respond_to do |format|
      if @faucet.update(faucet_params)
        format.html { redirect_to @faucet, notice: 'Faucet was successfully updated.' }
        format.json { render :show, status: :ok, location: @faucet }
      else
        format.html { render :edit }
        format.json { render json: @faucet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faucets/1
  # DELETE /faucets/1.json
  def destroy
    @faucet.destroy
    respond_to do |format|
      format.html { redirect_to faucets_url, notice: 'Faucet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faucet
      @faucet = Faucet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faucet_params
      params.require(:faucet).permit(:category, :manufacturer, :model, :discription, :main_img, :sellingprice, :properprice, :discountrate, :buyingprice, :fn1_title, :fn1_img, :fn1_content, :fn1_url)
    end
end
