require 'rails_helper'

RSpec.describe Equipment, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:equipment_requirements) }

    it { should have_many(:user_inventories) }

    end

    describe "InDirect Associations" do

    it { should have_many(:users) }

    it { should have_many(:lift_requiring) }

    end

    describe "Validations" do
      
    end
end
