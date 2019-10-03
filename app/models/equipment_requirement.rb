class EquipmentRequirement < ApplicationRecord
  # Direct associations

  belongs_to :equipment,
             :class_name => "Equipment"

  belongs_to :lift

  # Indirect associations

  # Validations

end
