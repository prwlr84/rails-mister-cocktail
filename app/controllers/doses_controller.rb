class DosesController < ApplicationController
  before_action :find_dose, only: [:show, :edit, :update, :destroy]

  def index
    @doses = Dose.all
  end

  def show; end

  def new
    @dose = dose.new
  end

  def create
    @dose = dose.new(dose_params)
    @dose.save
    redirect_to doses_path
  end


  def edit; end

  def update
    @dose.update(dose_params)
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose.destroy
    redirect_to doses_path
  end

  private

  def find_dose
    @dose = Dose.find(params[:id])
  end
end


