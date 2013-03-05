require 'spec_helper'

describe "StaticPages" do
    subject { page }

    let(:base_title) {"UC Berkeley McCown Archaeobotany Laboratory"}

  	describe "Home page" do
      before { visit '/static_pages/home' }
  		it { should have_selector('title', text: "#{base_title} | Home") }
  	end
  	

  	describe "Research page" do
      before { visit '/static_pages/research' }
  		it { should have_selector('title', text: "#{base_title} | Research") }
  	end
end
