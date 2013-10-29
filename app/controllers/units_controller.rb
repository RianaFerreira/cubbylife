class UnitsController < ApplicationController
  def index

  end
  def search
    @unit = Unit.find(params[:unit_number])

  end
end