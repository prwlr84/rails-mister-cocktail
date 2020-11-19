class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show; end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
