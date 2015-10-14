class CountertopsController < ApplicationController
  before_action :set_countertop, only: [:show, :edit, :update, :destroy]

 
  # GET /countertops
  # GET /countertops.json
  def index
    @countertops = Countertop.all
    @countertops = Countertop.includes(:countertype).all
    @countertops = Countertop.includes(:granitecolor).all
    @granitecolors = Granitecolor.all 
    
  end

  # GET /countertops/1
  # GET /countertops/1.json
  def show
    @countertops = Countertop.all
    @countertops = Countertop.includes(:countertype).all
    @countertops = Countertop.includes(:granitecolor).all
   
  end

  # GET /countertops/new
  def new
    @countertop = Countertop.new
    @granitecolors = Granitecolor.all 
  end

  # GET /countertops/1/edit
  def edit
  end

  # POST /countertops
  # POST /countertops.json
  def create
    @countertop = Countertop.new(countertop_params)
    @granitecolors = Granitecolor.all 


    respond_to do |format|
      if @countertop.save
        format.html { redirect_to @countertop, notice: 'Countertop was successfully created.' }
        format.json { render :show, status: :created, location: @countertop }
      else
        format.html { render :new }
        format.json { render json: @countertop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countertops/1
  # PATCH/PUT /countertops/1.json
  def update
    respond_to do |format|
      if @countertop.update(countertop_params)
        format.html { redirect_to @countertop, notice: 'Countertop was successfully updated.' }
        format.json { render :show, status: :ok, location: @countertop }
      else
        format.html { render :edit }
        format.json { render json: @countertop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countertops/1
  # DELETE /countertops/1.json
  def destroy
    @countertop.destroy
    respond_to do |format|
      format.html { redirect_to countertops_url, notice: 'Countertop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countertop
      @countertop = Countertop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def countertop_params
      params.require(:countertop).permit(:counterzip, :countersize, :countertype_id, :granitecolor_id)
    end
end

