require 'spec_helper'

describe "StaticPages" do
  
  describe "Home" do
    
    it "should have the content 'Paul Wanless" do
      visit root_path
      page.should have_content('Paul Wanless')
    end
  
  end
  
  describe "Bio" do
    
    it "should have the content 'Bio'" do
      visit bio_path
      page.should have_content('Bio')
    end
    
  end
  
  describe "Work_Experience" do
    
    it "should have the content 'Work Experience'" do
      visit work_experience_path
      page.should have_content('Work Experience')
    end
    
  end
  
  describe "Work_Tools" do
    
    it "should have the content 'Engineering Tools'" do
      visit work_experience_path
      page.should have_content('Engineering Tools')
    end
    
  end
  
end
