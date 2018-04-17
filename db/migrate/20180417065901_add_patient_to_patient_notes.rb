class AddPatientToPatientNotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :patient_notes, :patient, foreign_key: true
  end
end
