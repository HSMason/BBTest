class LoginPage
  
  include Capybara::DSL
  
  def email_input
    find_field(id: 'login_email')
  end
  
  def pw_input
    find_field(id: 'login_password')
  end
  
  def login_button
    find("button[name='commit']")
  end

  def login_as()
    fill_in email_input, with: 'not@anemail'
    fill_in pw_input, with: '1234567'
    login_button.click
    
  end
end
find('#login_email').set('a@example.com')