FactoryGirl.define do
  factory :transaction do
    first_direction "To"
    first_account_id 1
    second_direction "To"
    second_account_id 1
  end

end
