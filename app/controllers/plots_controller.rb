class PlotsController < ApplicationController
  before_action :authorize_access_request!
  before_action :set_todo, only: [:show, :update, :destroy]

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
  def plot_params
    params.require(:plot).permit(:name)
  end
end