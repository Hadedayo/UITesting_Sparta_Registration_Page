require 'selenium-webdriver'

class Registration_Selenium

  attr_accessor :registration_url

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

  def get_first_name_field
    @chrome_driver.find_element(:id, 'firstName').attribute('value')
  end

  def input_last_name_field(text)
    @chrome_driver.find_element(:id, 'lastName').send_keys(text)
  end

  def get_last_name_field
    @chrome_driver.find_element(:id, 'lastName').attribute('value')
  end

  def input_age(text)
   @chrome_driver.find_element(:css, 'input[placeholder="Enter Age"]').send_keys(text)
  end

  def get_age
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Age"]').attribute('value')
  end

  def input_date_of_birth(text)
    @chrome_driver.find_element(:name, 'dob').send_keys(text)
  end

  def get_date_of_birth
    @chrome_driver.find_element(:name, 'dob').attribute('value')
  end

  def select_gender
    @chrome_driver.find_element(:css, 'label[for=customRadioInline2]').click
  end

  def is_gender_selected
    @chrome_driver.find_element(:css, 'label[for=customRadioInline2]').selected?
  end

  def input_degree(text)
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Degree"]').send_keys(text)
  end

  def get_degree
      @chrome_driver.find_element(:css, 'input[placeholder="Enter Degree"]').attribute('value')
  end

  def select_university
    dropDownMenu = @chrome_driver.find_element(:id, 'inputUni')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'University of Oxford')
  end

  def is_a_university_selected
    @chrome_driver.find_element(:id, 'inputUni').text.include?('University of Oxford')
  end

  def input_address(text)
    @chrome_driver.find_element(:id, 'inputAddress').send_keys(text)
  end

  def get_address
    @chrome_driver.find_element(:id, 'inputAddress').attribute('value')
  end

  def input_address_2(text)
    @chrome_driver.find_element(:id, 'inputAddress2').send_keys(text)
  end

  def get_address_2
    @chrome_driver.find_element(:id, 'inputAddress2').attribute('value')
  end

  def input_city(text)
    @chrome_driver.find_element(:id, 'inputCity').send_keys(text)
  end

  def get_city
    @chrome_driver.find_element(:id, 'inputCity').attribute('value')
  end

  def select_county
    dropDownMenu = @chrome_driver.find_element(:id, 'inputCounty')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Bristol')
  end

  def is_county_selected
    @chrome_driver.find_element(:id, 'inputCounty').text.include?('Bristol')
  end

end
# test = Registration_Selenium.new
# test.visit_registration_site
# sleep 2
# test.input_age('22')
# sleep 3
