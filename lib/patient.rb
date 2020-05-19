class Patient

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
        # new_appt.patient = self
        # new_appt
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient == self
        end
    end

    def doctors
        appointments.collect do |appt|
            appt.doctor
        end
    end

end