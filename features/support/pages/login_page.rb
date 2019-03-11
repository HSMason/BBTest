class LoginPage
  
  include Capybara::DSL
  
  def email_input
    find('#login_email')
  end
  
  def pw_input
    find('#login_password')
  end
  
  def login_button
    find('[name=commit]')
  end

  def login_as(email, password)
    email_input.set(email)
    pw_input.set(password)
    login_button.click
  end

end
