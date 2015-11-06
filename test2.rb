require 'rubygems'
require 'watir-webdriver'

#opening the browser
$browser = Watir::Browser.new :firefox
$browser.goto 'http://hellosign.com'

#clicking the login button
$browser.link(:xpath => '//*[@id="dropDownMenu"]/div/span[1]/div/a').click

#inputting the email and password
$browser.text_field(:xpath => '//*[@id="login_email_address_input"]').when_present.set 'email@example.com'
$browser.text_field(:xpath => '//*[@id="login_password_input"]').when_present.set 'wrongpass'

#clicking on login and waiting for the validation message to appear
$browser.button(:xpath => '//*[@id="login_form"]/div/div[3]/div[5]/button').click


#Validating error text appears
Watir::Wait.until { $browser.text.include?('Invalid username/password combo.') }
if $browser.text.include?('Invalid username/password combo.') == true
	puts 'Test passed'
else
	puts 'Test Failed'
end

#cleaning up the workspace
$browser.close