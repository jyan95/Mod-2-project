class ApplicationController < ActionController::Base
  before_action :get_instance, only: [:show, :edit, :update, :destroy]

  def show
    #code
  end

  def edit
    #code
  end

  def get_instance
    @instance = self.class.find(params[:id])
  end
end
