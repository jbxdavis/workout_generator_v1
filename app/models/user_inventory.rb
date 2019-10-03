class UserInventory < ApplicationRecord
  # Direct associations

  belongs_to :equipment,
             :class_name => "Equipment"

  belongs_to :user

  # Indirect associations

  # Validations

end
