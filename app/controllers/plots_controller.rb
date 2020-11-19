class PlotsController < ApplicationController
  # before_action :authorize_access_request!
  before_action :set_plot, only: [:show, :update, :destroy]

  def create
    render json: Plot.create!(plot_params) 
  end
  def index
    render json: Plot.all
  end
  def show
    render json: Plot.find(params[:id])
  end

  private

  def set_plot
    @plot = current_user.plots.find(params[:id])
  end

  def plot_params
    params.require(:plot).permit(:plot_name)
  end
end