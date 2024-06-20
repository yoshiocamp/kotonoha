class KotobasController < ApplicationController

  def index
    @kotoba = Kotoba.all
  end

  
end
