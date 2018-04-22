class PatientNote < ApplicationRecord
  belongs_to :patient
  validates_presence_of :notes
  default_scope { order(visit_date: :desc) }
end
