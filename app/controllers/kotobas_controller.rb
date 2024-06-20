class KotobasController < ApplicationController

  def index
    @kotobas = Kotoba.all
  end

  def new
    @kotoba = Kotoba.new
  end

  def create
    Kotoba.create(tweet_params)
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:kotoba).permit(:name, :text)
  end
end
