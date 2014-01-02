class UserController < ApplicationController
  def new
    @available_units = Unit.all
  end

  def create

  end

end