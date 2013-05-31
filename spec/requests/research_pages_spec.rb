require 'spec_helper'

describe "Research Pages" do
 	subject { page }
  	describe "Add research page" do
  		before { visit addresearch_path }
   		it { should have_selector('h1', text:'Add Research') }
   		it { should have_selector('title', text: 'Add Research')}
    end
end
