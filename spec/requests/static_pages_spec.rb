require 'spec_helper'

describe "StaticPages" do
    subject { page }

    let(:base_title) {"UC Berkeley McCown Archaeobotany Laboratory"}

  	describe "Home page" do
      before { visit root_path }
  		it { should have_selector('title', text: "#{base_title} | Home") }
  	end
  	

  	describe "Research page" do
      before { visit research_path }
  		it { should have_selector('title', text: "#{base_title} | Research") }
  	end

    describe "Contact page" do
      before { visit contact_path }
      it { should have_selector('title', text: "#{base_title} | Contact") }
    end

    describe "Resource page" do
      before { visit resource_path }
      it { should have_selector('title', text: "#{base_title} | Resource") }
    end

    describe "People page" do
      before { visit people_path }
      it { should have_selector('title', text: "#{base_title} | People") }
    end
end
