class Appointment < ApplicationRecord
  belongs_to :worker
  belongs_to :medical_center

  validate :medic
  validate :appointments_overlapping_with_guard


  def medic
    unless self.worker.worker_type_id == 1
      self.errors.add(:worker_type_id, "Sólo puede asignarse turnos a los médicos")
    end
  end


  def appointments_overlapping_with_guard
    # Recorro las guardias en búsqueda de coincidencias
    Guard.all.each do |guard|
      # SI la fecha del turno está entre el inicio y fin de una fecha de guardia, y conicide con el trabajador del turno y la guardia, agrego el error y corto el ciclo.
      if self.appointment_date.between?(guard.guard_date.beginning_of_day, guard.guard_date.end_of_day) && (self.worker.id == guard.worker.id)
        puts "*** El turno se solapa con una guardia (ID de Guardia: #{guard.id}) *** "
        errors.add(:appointment_date, 'Este Médico NO PUEDE recibir turnos en un día de GUARDIA')
        break
      end
    end
    puts "*** Turno Asignado con Éxito ***"
  end

end
