class Patient < ApplicationRecord
  searchkick
  validates_presence_of :given_name, :date_of_birth, :contact_number, :present_complaint
  has_many :patient_notes, dependent: :destroy
  default_scope { order(given_name: :asc) }
end
