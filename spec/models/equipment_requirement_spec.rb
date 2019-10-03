require 'rails_helper'

RSpec.describe EquipmentRequirement, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:equipment) }

    it { should belong_to(:lift) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
