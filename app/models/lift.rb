class Lift < ApplicationRecord
  # Direct associations

  has_many   :equipment_requirements,
             :dependent => :destroy

  has_many   :mg_targets,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  has_many   :mgs_targeted,
             :through => :mg_targets,
             :source => :mg

  has_many   :required_equipment,
             :through => :equipment_requirements,
             :source => :equipment

  # Validations

end
