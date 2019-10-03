require 'rails_helper'

RSpec.describe MuscleGroup, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:mg_targets) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
