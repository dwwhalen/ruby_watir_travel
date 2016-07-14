
class LoginPage < CommonPage

  # def go_to_login
  #   @browser.button(:value => 'Login »').click
  #   # assert_match 'Welcome: Mercury Tours', myloginpage.the_title, "no match!"
  #   assert_includes 'Welcome: Mercury Tours', myloginpage.the_title
  #   self
  # end

  def username_text_box
    @browser.text_field(:name => 'username')
  end

  def password_text_box
    @browser.text_field(:name => 'password')
  end

  def login_button
    @browser.button(:value => 'Login')
  end

  def wait_until_page_loaded
    login_button.wait_until_present(30)
  end

  def login id, password
    username_text_box.when_present.set id
    password_text_box.when_present.set password
    login_button.when_present.click

    AccountPage.new @browser
  end

end