
class LoginPage < CommonPage

  # def go_to_login
  #   @browser.button(:value => 'Login »').click
  #   # assert_match 'Welcome: Mercury Tours', myloginpage.the_title, "no match!"
  #   assert_includes 'Welcome: Mercury Tours', myloginpage.the_title
  #   self
  # end

  def username_text_box
    @browser.text_field(:name, 'username')
  end

  def password_text_box
    @browser.text_field(:name, 'password')
  end

  def remember_me_check_box
    @browser.checkbox(:name, 'remember')
  end

  def login_button
    @browser.button(:value => 'Login')
  end

  def wait_until_page_loaded
    login_button.wait_until_present
  end

  def login id, password, remember_me
    username_text_box.wait_until_present.set id
    password_text_box.wait_until_present.set password
    if remember_me.downcase == 'checked'
      remember_me_check_box.wait_until_present.set
    else
      remember_me_check_box.wait_until_present.clear
    end
    login_button.wait_until_present.click

    AccountPage.new @browser
  end

end