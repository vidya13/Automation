
  def login
    visit 'https://login.xero.com/'
    expect(page).to have_text('Welcome to Xero')
    fill_in 'Email', with: "vidyanarasim@hotmail.com"
    fill_in 'Password', with: "PLEASE12"
    find("#submitButton").click
    expect(page).to have_text('NZ test')
  end
