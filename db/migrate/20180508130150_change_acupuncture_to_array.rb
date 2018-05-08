class ChangeAcupunctureToArray < ActiveRecord::Migration[5.1]
  def change
    change_column(:patient_notes, :acupuncture_course, "varchar[] USING (string_to_array(acupuncture_course, ','))")
  end
end
