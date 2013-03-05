require 'spec_helper'

describe "StaticPages" do
  	describe "Home page" do
  		it "should have the lab title" do
  			visit '/static_pages/home'
  			page.should have_content('McCown UC Berkeley Archaeobotany Laboratory')
  		end
  	end

  	describe "Research page" do
  		it "should have the content 'Current Research'" do
  			visit '/static_pages/research'
  			page.should have_content('Current Research')
  		end
  	end
end
