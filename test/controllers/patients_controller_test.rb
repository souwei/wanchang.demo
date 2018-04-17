require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { allergies: @patient.allergies, contact_number: @patient.contact_number, current_medication: @patient.current_medication, date_of_birth: @patient.date_of_birth, emergency_contact_name: @patient.emergency_contact_name, emergency_contact_number: @patient.emergency_contact_number, family_history: @patient.family_history, gender: @patient.gender, given_name: @patient.given_name, home_address: @patient.home_address, occupation: @patient.occupation, past_history: @patient.past_history, place_of_birth: @patient.place_of_birth, present_complaint: @patient.present_complaint, smoking_history: @patient.smoking_history, surname: @patient.surname } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { allergies: @patient.allergies, contact_number: @patient.contact_number, current_medication: @patient.current_medication, date_of_birth: @patient.date_of_birth, emergency_contact_name: @patient.emergency_contact_name, emergency_contact_number: @patient.emergency_contact_number, family_history: @patient.family_history, gender: @patient.gender, given_name: @patient.given_name, home_address: @patient.home_address, occupation: @patient.occupation, past_history: @patient.past_history, place_of_birth: @patient.place_of_birth, present_complaint: @patient.present_complaint, smoking_history: @patient.smoking_history, surname: @patient.surname } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
