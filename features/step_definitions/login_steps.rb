

Given(/^I navigate to the Login page$/) do
  @browser = Watir::Browser.new :chrome
  @login_page = LoginPage.new @browser
  @login_page.visit('http://phptravels.net/login/en')
end

Given(/^I login with id "([^"]*)" and password "([^"]*)" and remember me (checked|unchecked)$/) do |id, password, remember_me|
  @account_page = @login_page.login id, password, remember_me
end

And(/^the Account page is displayed$/) do
  @account_page.wait_until_page_loaded
end

When(/^I choose to Logoff$/) do
  @login_page = @account_page.choose_to_logout
end

Then(/^the Login page is displayed$/) do
  @login_page.wait_until_page_loaded
end


When(/^I close the browser$/) do
  @browser.close
end