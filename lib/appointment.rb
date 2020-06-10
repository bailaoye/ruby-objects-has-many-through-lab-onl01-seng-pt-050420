class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date)
    @date = date
  end

  def self.all
    @@all 
  end
end
