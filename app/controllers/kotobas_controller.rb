class KotobasController < ApplicationController

  def index
    @kotobas = Kotoba.all
  end


end
