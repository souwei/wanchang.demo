class AddFieldsToPatientNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :patient_notes, :patient_complaint, :string
    add_column :patient_notes, :signs_symptoms, :string
  end
end
