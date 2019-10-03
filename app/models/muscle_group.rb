class MuscleGroup < ApplicationRecord
  # Direct associations

  has_many   :mg_targets,
             :foreign_key => "mg_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
