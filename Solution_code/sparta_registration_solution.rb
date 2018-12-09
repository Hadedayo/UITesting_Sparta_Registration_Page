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
    @chrome_driver.find_element(:css, 'input[type="date"]').send_keys(text)
  end

  def converting_date(date)
    date.split('-').reverse!.join
  end

  def get_date_of_birth
    @chrome_driver.find_element(:css, 'input[type="date"]').attribute('value')
  end

  def select_gender
    @chrome_driver.find_element(:css, 'label[for=customRadioInline2]').click
  end

  def is_gender_selected
    @chrome_driver.find_element(:css, 'label[for=customRadioInline2]').enabled?
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

  def input_postcode(text)
   @chrome_driver.find_element(:id, 'inputPostcode').send_keys(text)
 end

 def get_postcode
   @chrome_driver.find_element(:id, 'inputPostcode').attribute('value')
 end

 def input_email(text)
   @chrome_driver.find_element(:css,'[type="email"]').send_keys(text)
 end

 def get_input_email
   @chrome_driver.find_element(:css,'[type="email"]').attribute('value')
 end

 def input_skills(text)
   @chrome_driver.find_element(:id, 'exampleFormControlTextarea1').send_keys(text)
 end

 def get_input_skills
   @chrome_driver.find_element(:id, 'exampleFormControlTextarea1').attribute('value')
 end

 def input_phone_number(text)
   @chrome_driver.find_element(:css,'[type="tel"]').send_keys(text)
 end

 def get_input_phone_number
   @chrome_driver.find_element(:css,'[type="tel"]').attribute('value')
 end

 def input_linkedIn_URL(text)
   @chrome_driver.find_element(:css,'[type="url"]').send_keys(text)
 end

 def get_input_linkedIn_URL
   @chrome_driver.find_element(:css, '[type="URL"]').attribute('value')
 end

 # def input_upload_file('C:\Users\Tech-W106\JadenSmith.docx')
 #   @chrome_driver.find_element(:css, 'label[for=uploadCV]').send_keys('C:\Users\Tech-W106\JadenSmith.docx')
 # end

 def get_input_file
   @chrome_driver.find_element(:css,'label[for=uploadCV]').attribute('value')
 end

 def input_SDET_stream
   @chrome_driver.find_element(:css, 'label[for=streamRadioInline1]' ).click
 end

 def get_input_SDET_stream
   @chrome_driver.find_element(:css, 'label[for=streamRadioInline1]' ).enabled?
 end

 def input_DevOps_stream
   @chrome_driver.find_element(:css, 'label[for=streamRadioInline2]' ).click
 end

 def get_input_DevOps_stream
   @chrome_driver.find_element(:css, 'label[for=streamRadioInline2]' ).enabled?
 end

 def input_terms_conditions
   @chrome_driver.find_element(:id, 'terms').click
 end

 def get_input_terms_conditions
   @chrome_driver.find_element(:id, 'terms').enabled?
 end

 def slide_experience
   @chrome_driver.find_element(:id,'experienceSlider').text
 end

 def get_slide_experience(text)
   @chrome_driver.find_element(:id, 'experienceSlider').send_keys(text)
 end

end
