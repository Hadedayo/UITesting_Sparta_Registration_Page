require 'selenium-webdriver'

class Registration_Selenium

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @registration_url = 'https://crispyjourney.herokuapp.com/'
  end

  def visit_registration_site
    @chrome_driver.get(@registration_url)
  end

  def get_current_url
    @chrome_driver.current_url
  end

  def input_first_name_field(text)
    @chrome_driver.find_element(:id, 'firstName').send_keys(text)
  end

  def input_last_name_field(text)
    @chrome_driver.find_element(:id, 'lastName').send_keys(text)
  end



end

test = Registration_Selenium.new
test.visit_registration_site
sleep 2
test.input_first_name_field('Hassanat')
sleep 2
test.input_last_name_field('Ade')
sleep 5
