class Lift < ApplicationRecord
  # Direct associations

  has_many   :equipment_requirements,
             :dependent => :destroy

  has_many   :mg_targets,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
