class KotobasController < ApplicationController
  before_action :set_kotoba, only:[:show, :edit, :destroy]
  before_action :move_to_index, except: [:index, :show]

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
    kotoba = Kotoba.find(params[:id])
    kotoba.destroy
    redirect_to root_path
  end


  def show
    @user = @kotoba.user
  end

  def delete_kotoba
    kotoba = Kotoba.find(params[:id])
    kotoba.destroy
    current_user.increment!(:delete_count)
    redirect_to root_path
    # ...
  end

  private
  def kotoba_params
    params.require(:kotoba).permit(:name, :text).merge(user_id: current_user.id)
  end

  def set_kotoba
    @kotoba = Kotoba.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
