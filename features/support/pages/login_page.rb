class LoginPage
  
  include Capybara::DSL
  
  def email_input
    page.find('#login_email')
  end
  
  def pw_input
    find_field(id: 'login_password')
  end
  
  def login_button
    find_button(name: 'commit')
  end

  def login_as()
    email_input.set('not@anemail')
    pw_input.set('1234567')
    login_button.click
    
  end
end