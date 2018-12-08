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

  def input_age(text)
   @chrome_driver.find_element(:css, 'input[type="number"]').send_keys(text)
  end

  def input_date_of_birth(text)
    @chrome_driver.find_element(:name, 'dob').send_keys(text)
  end

  def select_gender_female
    @chrome_driver.find_element(:css, 'label[for=customRadioInline2]').click
  end

  def input_degree(text)
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Degree"]').send_keys(text)
  end

  def select_university
    dropDownMenu = @chrome_driver.find_element(:id, 'inputUni')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'University of Oxford')
  end

  def input_address(text)
    @chrome_driver.find_element(:id, 'inputAddress').send_keys(text)
  end

  def input_address_2(text)
    @chrome_driver.find_element(:id, 'inputAddress2').send_keys(text)
  end

  def input_city(text)
    @chrome_driver.find_element(:id, 'inputCity').send_keys(text)
  end

  def select_county
    dropDownMenu = @chrome_driver.find_element(:id, 'inputCounty')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Bristol')
  end

end

test = Registration_Selenium.new
test.visit_registration_site
sleep 2
test.input_first_name_field('Hassanat')
test.input_last_name_field('Ade')
test.input_age('21')
test.input_date_of_birth('08/12/2018')
test.select_gender_female
test.input_degree('Chemical Engineering')
test.select_university
test.input_address('23 Bank street')
test.input_address_2('Flat 3')
test.input_city('London')
test.select_county
sleep 3
