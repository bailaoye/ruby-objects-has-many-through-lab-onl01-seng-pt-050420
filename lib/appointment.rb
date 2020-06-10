class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(date)
    @date = date
  end
end
