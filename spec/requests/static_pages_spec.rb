require 'spec_helper'

describe "StaticPages" do
  
  describe "Home" do
    
    it "should have the h1 'Paul Wanless" do
      visit root_path
      page.should have_selector('h1', :text => 'Paul Wanless')
    end
    
    it "should have the title 'Welcome'" do
      visit root_path
      page.should have_selector('title', :text => 'Paul Wanless | Welcome')
    end
  
  end
  
  describe "Bio" do
    
    it "should have the content 'Bio'" do
      visit bio_path
      page.should have_content('Bio')
    end
    
    it "should have the title 'Bio'" do
      visit bio_path
      page.should have_selector('title', :text => 'Paul Wanless | Bio')
    end
    
  end
  
  describe "Work_Experience" do
    
    it "should have the content 'Work Portfolio'" do
      visit work_experience_path
      page.should have_content('Work Portfolio')
    end
    
    it "should have the title 'Work Portfolio'" do
      visit work_experience_path
      page.should have_selector('title', :text => 'Paul Wanless | Work Portfolio')
    end
    
  end
  
  describe "Work_Tools" do
    
    it "should have the content 'Engineering Tools'" do
      visit work_tools_path
      page.should have_content('Engineering Tools')
    end
    
    it "should have the title 'Engineering Tools'" do
      visit bio_path
      page.should have_selector('title', :text => 'Paul Wanless | Engineering Tools')
    end
    
    
  end
  
end
