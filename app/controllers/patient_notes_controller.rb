class PatientNotesController < ApplicationController
  def index
  end


  #POST /patient_notes/1
  def create
    @patient_note = PatientNote.new(patient_note_params)
    @patient = Patient.find(params[:patient_note][:patient_id])
    respond_to do |format|
      if @patient_note.save
        format.html { redirect_to @patient ,notice: 'Appointment Data was succesfully saved.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { redirect_to @patient }
        format.json { render json: @patient_note.errors, status: :unprocessable_entity }
        format.js { }
      end
    end
  end


  private
  def patient_note_params
    params.require(:patient_note).permit(:visit_date, :tongue_examination, :pulse_examination, :herbal_course, :acupuncture_course, :diagnosis, :notes,:patient_id)
  end
end
