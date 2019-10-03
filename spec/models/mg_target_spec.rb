require 'rails_helper'

RSpec.describe MgTarget, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:lift) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
