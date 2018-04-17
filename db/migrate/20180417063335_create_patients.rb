class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :given_name
      t.string :surname
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :gender
      t.string :occupation
      t.string :contact_number
      t.string :emergency_contact_name
      t.string :emergency_contact_number
      t.text :home_address
      t.text :present_complaint
      t.text :past_history
      t.string :current_medication
      t.string :family_history
      t.string :smoking_history
      t.string :allergies

      t.timestamps
    end
  end
end
