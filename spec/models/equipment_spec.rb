require 'rails_helper'

RSpec.describe Equipment, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:user_inventories) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
