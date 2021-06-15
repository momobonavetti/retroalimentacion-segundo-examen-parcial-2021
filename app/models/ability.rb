class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in

    # Si hay ID es porque hay usuario logueado, mientras que es un usuario "invitado" en memoria, no tiene ID.
    unless user.id.nil?
      can :manage, :all

    else
      # Ver listado Centros
      can :index, MedicalCenter
      # Crear Nuevo Usuario
      can :create, User
      # Ver / Actualizar SOLO SUS DATOS
      can :read, User, :id => user.id
      can :update, User, :id => user.id
    end

  end
end
