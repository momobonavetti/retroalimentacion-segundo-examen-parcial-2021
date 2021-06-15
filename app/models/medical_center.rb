class MedicalCenter < ApplicationRecord
  belongs_to :medical_center_type
  has_many :appointments
  has_many :workers, through: :appointments
  has_many :guards
  has_many :workers, through: :guards

  validates_presence_of :name, :address, :phone_number
end
