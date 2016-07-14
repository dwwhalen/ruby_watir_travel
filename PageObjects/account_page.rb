
class AccountPage < BasePage

  # def go_to_login
  #   @browser.button(:value => 'Login »').click
  #   # assert_match 'Welcome: Mercury Tours', myloginpage.the_title, "no match!"
  #   assert_includes 'Welcome: Mercury Tours', myloginpage.the_title
  #   self
  # end

  def bookings_div
    @browser.div(:class, "navbar-collapse")
  end

  def user_dropdown
    @browser.link(:class, "show-submenu")
  end

  def logout_link
    @browser.link(:text, "Logout")
  end

  def wait_until_page_loaded
    bookings_div.wait_until_present(30)
  end

  def choose_to_logout
    user_dropdown.when_present.click
    logout_link.when_present.click
    LoginPage.new @browser
  end

end