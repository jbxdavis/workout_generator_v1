class Equipment < ApplicationRecord
  # Direct associations

  has_many   :user_inventories,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
