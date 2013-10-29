class UnitsController < ApplicationController
  def index

  end
  def search
    @unit = Unit.where(:unit_number => params[:query]).first
    render "index"
  end
end