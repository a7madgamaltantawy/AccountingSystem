require 'rails_helper'

RSpec.describe Account, :type => :model do
  describe 'validate transaction' do
    it 'valid from Asset to liability' do
      account1 = FactoryGirl.create(:account, :name => "First", :accounttype => "Asset", :amount => 0)
      account2 = FactoryGirl.create(:account, :name => "Second", :accounttype => "Liability", :amount => 0)

      Account.validate_transaction(account1.id , account2.id , 100).should eq(true)
    end


    it 'invalid add from Asset to Asset' do
      account1 = FactoryGirl.create(:account, :name => "First", :accounttype => "Asset", :amount => 100)
      account2 = FactoryGirl.create(:account, :name => "Second", :accounttype => "Asset", :amount => 100)

      Account.validate_transaction(account1.id , account2.id , 100).should eq(true)
    end

    it 'invalid add from Liability to Liability' do
      account1 = FactoryGirl.create(:account, :name => "x", :accounttype => "Liability", :amount => 20)
      account2 = FactoryGirl.create(:account, :name => "y", :accounttype => "Liability", :amount => 100)

      Account.validate_transaction(account1.id , account2.id , 100).should eq(true)
    end
  
  end
end
