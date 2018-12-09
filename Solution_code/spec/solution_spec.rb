require 'selenium-webdriver'

describe 'Testing the Sparta Global Registration Page' do
  before(:all) do
    @registration_service = Registration_Selenium.new
    @registration_service.visit_registration_site
    @generate = Generator.new
    @firstname = @generate.firstname
    @lastname = @generate.lastname
    @age = @generate.get_user_age
    @date_of_birth = '08122009'
    @text = 'Lorem ipsum dolor'
    @email = "abinu_siv@hotmail.com"
    @linkedIn = "https://www.linkedin.com/in/abinu-sivabalan-5bb32413b/"
    @file = 'C:\Users\Tech-W106\Abinu.doc'
  end

  it "should land on the registration page" do
    expect(@registration_service.get_current_url).to eq @registration_service.registration_url
  end

  it "should accept first name" do
    @registration_service.input_first_name_field(@firstname)
    expect(@registration_service.get_first_name_field).to eq @firstname
  end

  it "should accept last name" do
    @registration_service.input_last_name_field(@lastname)
    expect(@registration_service.get_last_name_field).to eq @lastname
  end

  it "should accept age" do
    @registration_service.input_age(@age)
    expect(@registration_service.get_age).to eq @age.to_s
  end

  it "should accept birthday" do
    @registration_service.input_date_of_birth(@date_of_birth)
    expect(@registration_service.get_date_of_birth.split('-').reverse!.join).to eq @date_of_birth
  end

  it "should select a gender" do
    @registration_service.select_gender
    expect(@registration_service.is_gender_selected).to be true
  end

  it "should input degree" do
    @registration_service.input_degree(@text)
    expect(@registration_service.get_degree).to eq @text
  end

  it "should select a University" do
    @registration_service.select_university
    expect(@registration_service.is_a_university_selected).to be true
  end

  it "should accept address*" do
    @registration_service.input_address(@text)
    expect(@registration_service.get_address).to eq @text
  end

  it "should accept address2" do
    @registration_service.input_address_2(@text)
    expect(@registration_service.get_address_2).to eq @text
  end

  it "should accept city" do
    @registration_service.input_city(@text)
    expect(@registration_service.get_city).to eq @text
  end

  it "should select a County" do
    @registration_service.select_county
    expect(@registration_service.is_county_selected).to be true
  end

  it "should input postcode" do
    @registration_service.input_postcode(@text)
    expect(@registration_service.get_postcode).to eq @text
  end

  it "should return input email" do
    @registration_service.input_email(@email)
    expect(@registration_service.get_input_email).to eq @email
  end

  it 'should return input skills' do
    @registration_service.input_skills(@text)
    expect(@registration_service.get_input_skills).to eq @text
  end

  it 'should return phone number' do
    @registration_service.input_phone_number(@text)
    expect(@registration_service.get_input_phone_number).to eq @text
    sleep 3
  end

  it 'should return linkedIn URL' do
    @registration_service.input_linkedIn_URL(@linkedIn)
    expect(@registration_service.get_input_linkedIn_URL).to eq @linkedIn
  end

  it 'should be able to upload file' do
    @registration_service.input_upload_file(@file)
    expect(@registration_service.get_input_file).to eq @file
  end

  it 'should accept SDET for stream' do
    @registration_service.input_SDET_stream
    expect(@registration_service.get_input_SDET_stream).to be true
  end

  it 'should accept DevOps for stream' do
    @registration_service.input_DevOps_stream
    expect(@registration_service.get_input_DevOps_stream).to be true
  end

  it 'should accept agree to terms and conditions' do
    @registration_service.input_terms_conditions
    expect(@registration_service.get_input_terms_conditions).to be true
  end

  it 'should slide the experince from 0-100' do
    @registration_service.get_slide_experience
    expect(@registration_service.get_slide_experience.to_i).to be_between(0,100).inclusive
  end

  it 'should sign in the application' do
    @registration_service.click_sign_in
    expect(@registration_service.get_current_url).to eq @registration_service.signed_up_url
    sleep 5
  end

end
