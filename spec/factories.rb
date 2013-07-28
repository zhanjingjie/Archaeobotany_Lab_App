FactoryGirl.define do
	factory :user do
		name "JJ"
		email "jj@gmail.com"
		password "foobar"
		password_confirmation "foobar"
	end
	
	factory :research do
		name "The research title"
		keywords "world class, archaeobotany, worldwide, archaeology"
		text "Our research is world class."
	end
end