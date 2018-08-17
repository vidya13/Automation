
  def login_to_xero
    visit 'https://login.xero.com/'
    expect(page).to have_text('Welcome to Xero')
    fill_in 'Email', with: "vidyanarasim@hotmail.com"
    fill_in 'Password', with: "PLEASE12"
    find("#submitButton").click
    expect(page).to have_text('NZ test')
  end

  def create_ANZ_NZ_bank_account
    find("a", :text => "Accounts").click
    find("a", :text => "Bank Accounts").click
    expect(page).to have_text('Bank Accounts')
    find("a", :text => "Add Bank Account").click
    expect(page).to have_text('Find your bank')
    expect(page).to have_text('ANZ (NZ)')
    first('.ba-banklist--item').click
    expect(page).to have_text('Enter your ANZ (NZ) account details')
    find("input[placeholder='e.g Business Account']").set "Test account"
    find("input[placeholder='Please select one']").click
    find('.ba-combo-list-item', :text => 'Loan').click
    input = find('#accountnumber-1068-inputEl')
    input.send_keys("12345")
    find("a", :text => "Continue").click
  end

  def verify_created_account_exists
    expect(page).to have_text('Test account')
  end

  def delete_the_created_account
    find("a", :text => "Settings").click
    find("a", :text => "Chart of Accounts").click
    expect(page).to have_text('Chart of Accounts')
    #find("a", :text => "Test account").click
    find('#SearchTermsText').send_keys("Test account")
    page.find(:xpath, "//span[text()='Search']").click
    find('#WillDelete').click
    find("a", :text => "Delete").click
    #accept_alert 'You have selected 1 Account to be Deleted.'
    find('#popupOK').click
  end