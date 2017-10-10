require_relative 'patient'

new_patient = Patient.new("Jisie", "David")
puts new_patient.first_name
puts new_patient.last_name

begin
    puts patient_contact_info
rescue NameError
    puts "You are attempting to print an undefined variable"
end

begin
    puts new_patient.patient_status(:coma)
rescue ArgumentError
    puts "Argument needs to be a string."
end

begin
    puts new_patient.patient_currently_admitted?
rescue ArgumentError
    puts "Wrong number of arguments!"
end

begin
    puts new_patient.patient_new_total(125)
rescue ZeroDivisionError
    puts "Can't divide by zero."
end

begin
    new_patient.add_med_to_list("lipitor", 123.12)
rescue ArgumentError
    puts "This number is not an integer."
end

begin
    new_patient.patient_medications_list
rescue RuntimeError
    puts "Medication list isn't valid."
end