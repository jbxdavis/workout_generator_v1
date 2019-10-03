class User < ApplicationRecord
  # Direct associations

  has_many   :user_inventories,
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  has_many   :favorited_lifts,
             :through => :favorites,
             :source => :lift

  has_many   :equipment,
             :through => :user_inventories

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
