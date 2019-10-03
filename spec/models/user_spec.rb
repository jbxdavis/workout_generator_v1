require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:user_inventories) }

    it { should have_many(:favorites) }

    end

    describe "InDirect Associations" do

    it { should have_many(:favorited_lifts) }

    it { should have_many(:equipment) }

    end

    describe "Validations" do
      
    end
end
