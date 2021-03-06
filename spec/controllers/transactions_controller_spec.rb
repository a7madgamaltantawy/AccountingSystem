require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe TransactionsController, :type => :controller do

  

  # This should return the minimal set of attributes required to create a valid
  # Transaction. As you add validations to Transaction, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {:first_account_id => "1", :second_account_id => "2", :amount => 0}
  }

  let(:invalid_attributes) {
    {:first_account_id => "vvv", :second_account_id => "eee", :amount => "z"}
  }
# {:first_account_id => "1", :second_account_id => "2", :amount => 100}
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TransactionsController. Be sure to keep this updated too.
  let(:valid_session) { {:first_account_id => "1", :second_account_id => "2", :amount => 0} }

  describe "GET index" do
    it "assigns all transactions as @transactions" do
      transaction = Transaction.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:transactions)).to eq([transaction])
    end
  end

  describe "GET show" do
    it "assigns the requested transaction as @transaction" do
      transaction = Transaction.create! valid_attributes
      get :show, {:id => transaction.to_param}, valid_session
      expect(assigns(:transaction)).to eq(transaction)
    end
  end

  describe "GET new" do
    it "assigns a new transaction as @transaction" do
      get :new, {}, valid_session
      expect(assigns(:transaction)).to be_a_new(Transaction)
    end
  end

  describe "GET edit" do
    it "assigns the requested transaction as @transaction" do
      transaction = Transaction.create! valid_attributes
      get :edit, {:id => transaction.to_param}, valid_session
      expect(assigns(:transaction)).to eq(transaction)
    end
  end


end
