# encoding: UTF-8
require 'ruby-hl7'
class HL7::Message::Segment::DG1 < HL7::Message::Segment
  add_field :set_id

  add_field :procedure_code, :idx => 3
  add_field :prodedure_description
  add_field :appointment_time do |value|
    convert_to_datetime(value)
  end
  add_field :department_code
  add_field :department_description

  add_field :clinician, :idx => 16 do |value|
    value.split('^')
  end

end
