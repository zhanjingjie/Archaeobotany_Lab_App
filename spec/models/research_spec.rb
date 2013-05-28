# == Schema Information
#
# Table name: researches
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  keywords   :text
#  text       :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe Research do
	before { @research = Research.new(name: "JJ's research project", 
		keywords: "Ruby on rails, web app, programming intensive", text: "Oh yea, I love it") }
	subject { @research }
	it { should respond_to(:name) }
	it { should respond_to(:keywords) }
	it { should respond_to(:text) }
	it { should be_valid }

	describe "When name is present" do
		before { @research.name = " " }
		it { should_not be_valid }
	end

	describe "When keywords are not present" do
		before { @research.keywords = " " }
		it { should_not be_valid }
	end

	describe "When text is not present" do
		before { @research.text = " " }
		it { should_not be_valid }
	end

	describe "When research name is too long" do 
		before { @research.name = "a" * 51 }
		it { should_not be_valid }
	end

	describe "When research name is already taken" do
		before do 
			research_with_same_title = @research.dup
			# title should be case-insensitive
			research_with_same_title.name = @research.name.upcase
			research_with_same_title.save
		end
		it { should_not be_valid }
	end
end
