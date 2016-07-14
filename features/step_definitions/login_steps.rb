Given(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|
  @browser = Watir::Browser.new
  @login_page = LoginPage.new @browser
  @login_page.visit('http://phptravels.net/login')
  @account_page = @login_page.login id, password
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