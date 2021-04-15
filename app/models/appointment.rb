class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor


    def time_format
        ar = self.appointment_datetime.to_formatted_s(:long).split
        ar[0, 3]
        ar[0,3].join(" ") + " at " + ar.last
      end
end
