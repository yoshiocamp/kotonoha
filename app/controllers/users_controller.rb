class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @kotobas = current_user.kotobas
  end
end
