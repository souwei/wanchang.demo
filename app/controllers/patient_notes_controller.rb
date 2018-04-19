class PatientNotesController < ApplicationController
  def index
  end


  #POST /patient_notes/1
  def create

    @patient_note = PatientNote.new(patient_note_params)
    byebug
    # respond_to do |format|
    #   if @patient.save
    #     format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
    #     format.json { render :show, status: :created, location: @patient }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @patient.errors, status: :unprocessable_entity }
    #   end
    # end
  end


  private
  def patient_note_params
    params.require(:patient_note).permit(:visit_date, :tongue_examination, :pulse_examination, :herbal_course, :acupuncture_course, :diagnosis, :notes,:patient_id)
  end
end
