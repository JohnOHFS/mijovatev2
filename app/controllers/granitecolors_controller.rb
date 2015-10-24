class GranitecolorsController < ApplicationController
 before_action :set_granitecolor, only: [:show, :edit, :update, :destroy]

	def index
    	@granitecolors = Granitecolor.all
  	end


	def show
	    @granitecolors = Granitecolor.all 
	end

	def edit
	    @granitecolors = Granitecolor.all 
	end

	def new
	    @granitecolor = Granitecolor.new
	end

	def create
    @granitecolor = Granitecolor.new(granitecolor_params)
    
    respond_to do |format|
      if @granitecolor.save
        format.html { redirect_to @granitecolor, notice: 'Granite color was successfully created.' }
        format.json { render :show, status: :created, location: @granitecolor }
      else
        format.html { render :new }
        format.json { render json: @granitecolor.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @granitecolor.update(granitecolor_params)
        format.html { redirect_to @granitecolor, notice: 'Granite color was successfully updated.' }
        format.json { render :show, status: :ok, location: @granitecolor }
      else
        format.html { render :edit }
        format.json { render json: @granitecolor.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @granitecolor.destroy
    respond_to do |format|
      format.html { redirect_to granitecolors_url, notice: 'Granite color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_granitecolor
      @granitecolor = Granitecolor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def granitecolor_params
      params.require(:granitecolor).permit(:name, :url)
    end
end

