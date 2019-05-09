Given(/^I am on Facebook page$/) do
  @browser.goto "http://facebook.com/"

sleep 5
if not @browser.text.include? "Connect with friends and the
world around you on Facebook"
  fail p "Text not prsent"
end

@browser.button(:value,"Log In").click
  sleep 10
end

