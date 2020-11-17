class ObservationsController < ApplicationController
  before_action :set_observation, only: [:show, :update, :destroy]

  def index
     @observations = Observation.all
     render json: @observations
  end

  def create
    render json: Observation.create!(observation_params)
  end

  def show
    render json: Observation.find(params[:id])
  end

  def update
    @observation = Observation.find(params[:id])
    if @observation
      @observation.update!(observation_params)
      render json: {message: 'Observation updated.'}, status: 200
    else
      render json: {error: 'unable to update.'}, status: 400
    end
  end

  def destroy
    @observation = Observation.find(params[:id])
    if @observation
      @observation.destroy
      render json: {message: 'Observation deleted.'}, status: 200
    else
      render json: {error: 'unable to delete.'}, status: 400
    end
  end

  private

  def set_observation
    @observation = Observation.find(params[:id])
  end
  
  def observation_params
    params.permit(:title, :description, :plot_id, actions_attributes: [:id,:action_description, :category_id ], files: [])
  end

end