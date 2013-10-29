class UnitsController < ApplicationController
  def index
    @units = Unit.order(:unit_number)
  end

  def show
    @unit = Unit.find(params[:id])
    render "index"
  end

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(params[:unit])
    if @unit.save
      redirect_to unit_path(@unit.id)
    else
      render "new"
    end
  end

  def edit
    @unit = Unit.find(params[:id])
  end

  def update
    @unit = Unit.find(params[:id]).first
    if @unit.update_attributes(params[:unit])
      redirect_to unit_path(@unit.id)
    else
      render "edit"
    end
  end

  def destroy
    unit = Unit.find(params[:id])
    unit.destroy
    redirect_to units_path
  end

  def search
    @unit = Unit.where(:unit_number => params[:query]).first
    if @unit.present?
      redirect_to unit_path(@unit.id)
    else
      flash[:notice] = "Invalid Unit Number: Try Again."
      render "search"
    end
  end

end