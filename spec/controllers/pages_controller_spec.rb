require 'spec_helper'

describe PagesController do
  render_views
  
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      # Pode ser uma substring, por isso deixei apenas o " | Home"
      response.should have_selector('title', :content => ' | Home')
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      # Pode ser uma substring, por isso deixei apenas o " | Contact"
      response.should have_selector('title', :content => ' | Contact')
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      # Pode ser uma substring, por isso deixei apenas o " | About"
      response.should have_selector('title', :content => ' | About')
    end
  end
  
end
