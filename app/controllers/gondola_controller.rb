class GondolaController < ApplicationController
  def insert
    gondola = Gondola.find_or_create_by(plate: params[:gondola])
    gondola.beacons.create(beacon_params)
    head status: :created
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def beacon_params
    params.permit(:distance, :uuid, :rssi, :power)
  end
end
