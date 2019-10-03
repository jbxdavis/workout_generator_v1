class MgTarget < ApplicationRecord
  # Direct associations

  belongs_to :mg,
             :class_name => "MuscleGroup"

  belongs_to :lift

  # Indirect associations

  # Validations

end
