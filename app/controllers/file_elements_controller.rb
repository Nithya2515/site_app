class FileElementsController < ApplicationController

  def create
    render json: FileElement.create!(file_params)
  end

  def show
    render json: FileElement.find(params[:id])
  end

  def index
    render json: file_elements
  end

  def update
    @file_element = FileElement.find(params[:id])
    if @file_element
      @file_element.update!(file_params)
      render json: {message: 'files updated.'}, status: 200
    else
      render json: {error: 'unable to update.'}, status: 400
    end
  end

  private

  def file_elements
    observation = Observation.find(params[:observation_id])
    file_elements ||= observation.file_elements
  end

  def file_params
    params.permit(:observation_id, :file)
  end
end