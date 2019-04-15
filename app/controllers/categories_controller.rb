class CategoriesController < ApplicationController
  def index
    @all = Category.all
  end

  # def show
  # end

end
