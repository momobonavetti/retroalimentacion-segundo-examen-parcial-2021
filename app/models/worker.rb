class Worker < ApplicationRecord
  belongs_to :worker_type
  has_many :appointments
  has_many :medical_centers, through: :appointments
  has_many :guards
  has_many :medical_centers, through: :guards

  validates_presence_of :last_name, :first_name, :phone_number, :email

  def full_name
    return "#{last_name.upcase}, #{first_name}"
  end
end
