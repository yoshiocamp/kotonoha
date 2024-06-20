class KotobasController < ApplicationController

  def index
    @kotobas = Kotoba.all
  end

  def new
    @kotoba = Kotoba.new
  end
end
