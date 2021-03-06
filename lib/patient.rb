class Patient
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map {|patient| patient.doctor}
  end


  def self.all
    @@all
  end


end
