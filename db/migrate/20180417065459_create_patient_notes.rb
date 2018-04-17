class CreatePatientNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :patient_notes do |t|
      t.date :visit_date
      t.text :tongue_examination
      t.text :pulse_examination
      t.text :herbal_course
      t.text :acupuncture_course
      t.text :diagnosis
      t.text :notes


      t.timestamps
    end
  end
end
