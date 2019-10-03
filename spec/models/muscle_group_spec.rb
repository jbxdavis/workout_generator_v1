require 'rails_helper'

RSpec.describe MuscleGroup, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:mg_targets) }

    end

    describe "InDirect Associations" do

    it { should have_many(:lifts_targeting) }

    end

    describe "Validations" do
      
    end
end
