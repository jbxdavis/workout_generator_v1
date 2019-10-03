class Equipment < ApplicationRecord
  # Direct associations

  has_many   :equipment_requirements,
             :dependent => :destroy

  has_many   :user_inventories,
             :dependent => :destroy

  # Indirect associations

  has_many   :lift_requiring,
             :through => :equipment_requirements,
             :source => :lift

  # Validations

end
