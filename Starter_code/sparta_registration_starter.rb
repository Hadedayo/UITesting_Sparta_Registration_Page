require 'selenium-webdriver'

class Registration_Selenium

  attr_accessor :registration_url

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @registration_url = 'https://crispyjourney.herokuapp.com/'

  end

  def visit_registration_site

  end

  def get_current_url

  end

  def input_first_name_field(text)

  end

  def get_first_name_field

  end

  def input_last_name_field(text)

  end

  def get_last_name_field

  end

  def input_age(text)

  end

  def get_age

  end

  def input_date_of_birth(text)

  end

  def get_date_of_birth

  end

  def select_gender

  end

  def is_gender_selected

  end

  def input_degree(text)

  end

  def get_degree

  end

  def select_university

  end

  def is_a_university_selected

  end

  def input_address(text)

  end

  def get_address

  end

  def input_address_2(text)

  end

  def get_address_2

  end

  def input_city(text)

  end

  def get_city

  end

  def select_county

  end

  def is_county_selected

  end

  def input_postcode(text)

 end

 def get_postcode

 end

 def input_email(text)

 end

 def get_input_email

 end

 def input_skills(text)

 end

 def get_input_skills

 end

 def input_phone_number(text)

 end

 def get_input_phone_number

 end

 def input_linkedIn_URL(text)

 end

 def get_input_linkedIn_URL

 end

 def input_upload_file

 end

 def get_input_file

 end

 def input_SDET_stream

 end

 def get_input_SDET_stream

 end

 def input_DevOps_stream

 end

 def get_input_DevOps_stream

 end

 def input_terms_conditions

 end

 def get_input_terms_conditions

 end

 def slide_experience

 end

 def get_slide_experience(text)

 end

end
