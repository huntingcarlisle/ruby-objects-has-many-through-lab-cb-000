class Doctor
  attr_accessor :name, :patients, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def new_appointment(patient, date)
   appt = Appointment.new(patient, self, date)
   @patients << new_song
   @appointments << genre
   return new_song
  end
  
  def appointments
    return Appointment.all.select{|appt|appt.doctor == self}
  end
  
  def patients
    return appointments.map{|appt|appt.patient}
  end
  
end