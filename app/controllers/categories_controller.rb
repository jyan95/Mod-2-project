class CategoriesController < ApplicationController
  before_action :get_instance, only: [:show]

  def index
    @all = Category.all
  end

  private

  def get_instance
    @category = Category.find(params[:id])
  end
end
