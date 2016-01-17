class Gondola < ActiveRecord::Base
  has_many :beacons

  def toggle_light
    update_column(:light, (light + 1) % 2)
  end

  def time_diff
    seconds_diff = (created_at - Time.now).to_i.abs

    hours = seconds_diff / 3600
    seconds_diff -= hours * 3600

    minutes = seconds_diff / 60
    seconds_diff -= minutes * 60

    seconds = seconds_diff

    "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end

  def days_late
    if ((Time.now - created_at - 2.days).to_i / 1.day) < 0
      0
    else
      ((Time.now - created_at - 2.days).to_i / 1.day)
    end
  end

  def sort
    if plate.start_with?('GNOX', 'CITX')
      'USA'
    elsif plate.start_with?('FXE')
      'Nacional'
    elsif plate.start_with?('DEAX', 'SP', 'MP')
      'Privada'
    elsif plate.start_with?('KCSM', 'TCM')
      'Nacional Norte'
    end
  end
end
