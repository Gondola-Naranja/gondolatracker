class ReceiverController < ApplicationController
  protect_from_forgery with: :null_session

  def insert
    gondola = Gondola.find_or_create_by(plate: params[:gondola])
    gondola.beacons.create(beacon_params)
    head status: :created
  end

  def time
    gondola = Gondola.find_by(plate: params[:plate])
    render json: { time: gondola.time_diff }
  end

  def light
    gondola = Gondola.find_by(plate: params[:plate])
    render json: { light: gondola.light }
  end

  private

  def beacon_params
    params.permit(:distance, :uuid, :rssi, :power)
  end
end
