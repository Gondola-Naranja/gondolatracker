class Werk < ActiveRecord::Base
  has_many :gondollas
  has_many :beacons
end
