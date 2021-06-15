class Guard < ApplicationRecord
  belongs_to :worker
  belongs_to :medical_center

  validate :overlapping_guards

  def overlapping_guards
    # Recorro las guardias en búsqueda de coincidencias
    Guard.all.each do |guard|
      # SI la fecha del turno está entre el inicio y fin de una fecha de guardia, y conicide con el trabajador del turno y la guardia, agrego el error y corto el ciclo.
      if self.guard_date.between?(guard.guard_date.beginning_of_day, guard.guard_date.end_of_day) && (self.worker.id == guard.worker.id) && (self.id != guard.id)
        puts "*** Este Médico ya está de gurdia en este día (ID: #{guard.id} - FECHA: #{guard.guard_date}) *** "
        errors.add(:guard_date, 'Este Médico YA TIENE una GUARDIA asignada en esta fecha')
        break
      end
    end
    puts "*** Guardia Asignada con Éxito ***"
  end

end
