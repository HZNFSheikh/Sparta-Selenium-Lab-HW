require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to match 'demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field('Hamzah')
      expect(@driver.get_first_name_field_value).to eq 'Hamzah'
    end

    it 'should accept a last name' do
      @driver.set_last_name_field('Sheikh')
      expect(@driver.get_last_name_field_value).to eq 'Sheikh'
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option('Single')
      expect(@driver.select_marital_option('Single')).to be true
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do

    end

    it 'should have a country default of Afhghanistan' do
    end

    it 'accept a new DOB' do

    end

    it 'should accept a new country value' do

    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field('442089991818')
      expect(@driver.get_phone_number_field_value.length).to eq 12
    end

    it 'should accept a username' do
      @driver.set_user_name_field('hamzilla')
      expect(@driver.get_user_name_field_value).to match 'hamzilla'
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
      expect(@driver.get_about_yourself_value).to be_kind_of String
    end

    it 'should accept a password' do
      @driver.set_password_field('Password')
      expect(@driver.get_password_value).to be_kind_of String
    end

    it 'should accept a password confirmation' do
      # @driver.set_confirmation_password_field('Password')
      # expect(@driver.get_confirmation_password_value).to match (@driver.get_password_value)
    end

  end

end
