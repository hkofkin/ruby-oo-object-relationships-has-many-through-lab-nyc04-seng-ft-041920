require 'pry'

class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    #(date, patient, doctor)
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
        # new_appt.doctor = self
        # new_appt
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end

    def patients
        appointments.collect do |appt|
            appt.patient
        end
    end

end