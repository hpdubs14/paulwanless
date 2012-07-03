require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
  describe "Home" do
    before { visit root_path}
    #refactored for subject {page} and with spec/support/utilities.rb
    it { should have_selector('h1',     text: 'Welcome') }
    it { should have_selector('title',  text: full_title('Home')) }
  end
  
  describe "Bio" do
    before { visit bio_path}
    
    it "should have the content 'Bio'" do
      page.should have_content('Bio')
    end
    
    it "should have the title 'Bio'" do
      page.should have_selector('title', :text => 'Paul Wanless | Bio')
    end
    
  end
  
  describe "Work_Experience" do
    before { visit work_portfolio_path }
    
    it "should have the content 'Work Portfolio'" do
      page.should have_content('Work Portfolio')
    end
    
    it "should have the title 'Work Portfolio'" do
      page.should have_selector('title', :text => 'Paul Wanless | Work Portfolio')
    end
    
  end
  
  describe "Work_Tools" do
    before { visit engineering_tools_path }
    
    it "should have the content 'Engineering Tools'" do
      page.should have_content('Engineering Tools')
    end
    
    it "should have the title 'Engineering Tools'" do
      page.should have_selector('title', :text => 'Paul Wanless | Engineering Tools')
    end
        
  end
  
  describe "Layout links" do
    
    it "should have the right links on the layout" do
       visit root_path
       click_link "Bio"
       page.should have_selector 'title', text: full_title('')
       click_link "Work Portfolio"
       page.should have_selector 'title', text: full_title('Work Portfolio')
       click_link "Engineering Tools"
       page.should have_selector 'title', text: full_title('Engineering Tools')
       click_link "Home"
       page.should have_selector 'h1', text: 'Welcome'
    end
    
  end
end
