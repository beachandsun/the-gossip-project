require 'rails_helper'

RSpec.describe Gossip, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  
  context "validation" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end

end
