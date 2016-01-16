class GondolaController < ApplicationController
  def insert
    @gondola = Gondola.find_or_create_by(gondola_params[:gondola])
    head status: :created
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def gondola_params
    params.permit(:distance, :uuid, :rssi, :power, :gondola)
  end
end
