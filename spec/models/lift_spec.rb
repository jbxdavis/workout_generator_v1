require 'rails_helper'

RSpec.describe Lift, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:mg_targets) }

    it { should have_many(:favorites) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
