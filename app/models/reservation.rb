class Reservation < ApplicationRecord
  belongs_to :housing
  

  validates :start_date, :presence => { :message => "must be a valid date/time" }
  validates :end_date, :presence => {:message => "must be a valid date/time"}
  validate :start_must_preceed_end

  def start_must_preceed_end
    errors.add(:start_date, "must be before end date") unless
       start_date < end_date
  end 
end
