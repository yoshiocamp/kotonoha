class KotobasController < ApplicationController
  before_action :set_kotoba, only:[:show, :edit, :destroy]
  def index
    @kotobas = Kotoba.all
  end

  def new
    @kotoba = Kotoba.new
  end

  def create
    Kotoba.create(kotoba_params)
    redirect_to root_path
  end

  def edit
    
  end

  def update
    kotoba = Kotoba.find(params[:id])
    kotoba.update(kotoba_params)
    redirect_to root_path
  end

  def destroy
    @kotoba.destroy
    respond_to do |format|
      format.html { redirect_to kotobas_url, notice: 'Kotoba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def show
  end

  private
  def kotoba_params
    params.require(:kotoba).permit(:name, :text)
  end

  def set_kotoba
    @kotoba = Kotoba.find(params[:id])
  end
end
