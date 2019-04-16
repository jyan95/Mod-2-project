class CategoriesController < ApplicationController
  def index
    @all = Category.all
  end

  private

  def get_instance
    @instance = Category.find(params[:id])
  end
end
