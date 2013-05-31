require 'spec_helper'

describe "Research Pages" do
 	subject { page }
  	describe "Add research page" do
  		before { visit addresearch_path }
   		it { should have_selector('h2', text:'Add Research') }
   		it { should have_selector('title', text: 'Add Research')}
    end

    describe "Single research page" do
    	let(:research) { FactoryGirl.create(:research) }
    	before { visit research_path(research) }
    	it { should have_selector('h1', text: research.name) }
    end

    describe "Add research" do
    	before { visit addresearch_path }
    	let(:submit) { "Add Research" }
    	describe "with invalid information" do 
    		it "should not create a research" do
    			expect { click_button submit }.not_to change(Research, :count)
    		end
    	end
    	describe "with valid information" do
    		before do
    			fill_in "Name", with: "Archaeobotany Research"
    			fill_in "Text", with: "This is our research."
    			fill_in "Keywords", with: "worldwide, famous, archaeobotany"
    		end
    		it "should create a research" do
    			expect { click_button submit }.to change(Research, :count).by(1)
    		end
    	end
    end
end
