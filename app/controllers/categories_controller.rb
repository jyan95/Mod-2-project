class CategoriesController < ApplicationController
  def index
    @all = Category.all
  end

end
