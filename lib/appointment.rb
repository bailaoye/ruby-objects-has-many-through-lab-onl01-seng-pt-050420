class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def patient(date)
    @date = date
    @patient
    @doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
