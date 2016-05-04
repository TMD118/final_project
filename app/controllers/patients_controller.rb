class PatientsController < ApplicationController
 before_action :set_patient, :only => [:new, :create, :show, :edit, :update, :destroy]

     def set_patient
    
      @doctor = Doctor.find_by_id(params[:doctor_id])
       
    end
    def patient_params
      params.require(:patients).permit(:tokennum, :fullname, :phonenumber)
    end

    def index
   @patients = Patients.all
    end


    def new
    
  
    @patient = Patients.new
    
    end
    
    def create
  @patient = @doctor.patients.new(patient_params)
 
  @patient.save
  redirect_to doctor_patients_path
end
    
    def destroy
    
    @patient.destroy
    redirect_to doctor_patients_path
    end


end
