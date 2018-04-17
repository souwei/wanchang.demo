json.extract! patient, :id, :given_name, :surname, :date_of_birth, :place_of_birth, :gender, :occupation, :contact_number, :emergency_contact_name, :emergency_contact_number, :home_address, :present_complaint, :past_history, :current_medication, :family_history, :smoking_history, :allergies, :created_at, :updated_at
json.url patient_url(patient, format: :json)
