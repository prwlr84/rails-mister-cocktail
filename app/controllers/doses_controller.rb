class DosesController < ApplicationController
  before_action :find_dose, only: [:show, :edit, :update, :destroy]

  def index
    @doses = Dose.all
  end

  private

  def find_dose
    @dose = Dose.find(params[:id])
  end
end


