class Gondolla < ActiveRecord::Base

  def days_late
    if ((Time.now - created_at - 2.days).to_i / 1.day) < 0
      0
    else
      ((Time.now - created_at - 2.days).to_i / 1.day)
    end
  end

  def sort
    if plate.start_with?("GNOX", "CITX")
      "USA"
    elsif plate.start_with?("FXE")
      "Nacional"
    elsif plate.start_with?("DEAX", "SP", "MP")
      "Privada"
    elsif plate.start_with?("KCSM", "TCM")
      "Nacional Norte"
    end
  end

end
