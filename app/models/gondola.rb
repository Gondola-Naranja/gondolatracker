class Gondola < ActiveRecord::Base
  has_many :beacons

  def calculate_lat_long
    r_earth = 6371000 # km
    averaged_beacons = g.beacons
    d1 = averaged_beacons[0].distance.to_f
    d2 = averaged_beacons[1].distance.to_f
    constant_dist = 22
    alpha = (Math.acos((d2**2 - d1**2 + constant_dist**2) / (2*d2*constant_dist))) * (180 / Math::PI)
    beta = (Math.acos((d1**2 - d2**2 + constant_dist**2) / (2*d1*constant_dist))) * (180 / Math::PI)

    comp_alpha = 90 - alpha
    comp_beta = 90 - beta

    y_alpha = d2 * Math.sin(comp_alpha)
    x_alpha = d2 * Math.cos(comp_alpha)

    y_beta = d1 * Math.sin(comp_beta)
    x_beta = d1 * Math.cos(comp_beta)

    lat_pos = averaged_beacons[1].latitude + (y_alpha / r_earth) * (180 / Math::PI)
    lat_neg = averaged_beacons[1].latitude + ((-1*y_alpha) / r_earth) * (180 / Math::PI)

    new_latitude  = (lat_pos + lat_neg) / 2


    new_longitude = averaged_beacons[1].longitude + (x_alpha / r_earth) * (180 / Math::PI) / Math.cos(averaged_beacons[1].latitude *  Math::PI/180)
  end
end

# 25.646293 , -100.32378
