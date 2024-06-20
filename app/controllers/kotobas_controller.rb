class KotobasController < ApplicationController

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
    @kotoba = Kotoba.find(params[:id])
  end

  def update
    kotoba = Kotoba.find(params[:id])
    kotoba.update(kotoba_params)
    redirect_to root_path
  end

  def show
    @kotoba = Kotoba.find(params[:id])
  end

  private
  def kotoba_params
    params.require(:kotoba).permit(:name, :text)
  end
end
