require_relative '/Users/vidya.narasimhan/vidya/Automation/init.rb'
require_relative '/Users/vidya.narasimhan/vidya/Automation/spec/feature/stepdefinition/helper.rb'

RSpec.describe 'Creating bank account', type: :feature do
  it 'creating bank account for a test org' do
    login_to_xero
    create_ANZ_NZ_bank_account
    verify_created_account_exists
    delete_the_created_account
  end
end

