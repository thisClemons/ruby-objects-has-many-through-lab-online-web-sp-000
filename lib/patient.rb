class Patient

  @@all = []

  def initialize(name)
    @name = name
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    appointments.collect {|appt| appt.doctor}.uniq    
  end

end
