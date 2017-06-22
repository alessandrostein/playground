class Event < ActiveRecord::Base

  def to_s
    "#{address} - #{number} - #{complement}, #{city}"
  end
end
