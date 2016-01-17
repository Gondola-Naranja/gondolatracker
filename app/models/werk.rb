class Werk < ActiveRecord::Base
  has_many :gondolas
  has_many :beacons
end
