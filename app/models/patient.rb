class Patient < ApplicationRecord
  searchkick
  validates_presence_of :given_name, :date_of_birth, :contact_number
  has_many :patient_notes
  default_scope { order(given_name: :asc) }
end
