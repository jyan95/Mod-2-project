class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :get_instance, only: [:show, :edit, :update, :destroy, :new_tool]

  def show; end

  def edit; end

  def edit

  end

  def cart
    session[:cart] ||= []
  end



  # private
  #
  # def get_instance
  #   @instance = self.class.find(params[:id])
  # end
end
