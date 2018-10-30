class Patient
  attr_accessor :name, :doctors, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def new_appointment(doctor, date)
   appt = Appointment.new(self, doctor, date)
   @doctors << doctor
   @appointments << appt
   return appt
  end
  
  def appointments
    return Appointment.all.select{|appt|appt.doctor == self}
  end
  
  def patients
    return appointments.map{|appt|appt.patient}
  end
  
end