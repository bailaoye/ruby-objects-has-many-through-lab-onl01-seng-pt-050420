class Doctor
  attr_accessor :name, :doctors

  @@doctors = []

  def initialize(name)
    @name = name
    @appointments = []
    @@doctors << self
  end

  def name(name)
    @name = name
  end


  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end


  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    appointment
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end

end
