class Gondolla < ActiveRecord::Base

  def days_late
    if ((Time.now - created_at - 2.days).to_i / 1.day) < 0
      0
    else
      ((Time.now - created_at - 2.days).to_i / 1.day)
    end
  end

end
