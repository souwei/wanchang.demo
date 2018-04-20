class PatientNote < ApplicationRecord
  belongs_to :patient
  validates_presence_of :notes
end
