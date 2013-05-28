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

class Research < ActiveRecord::Base
  attr_accessible :keywords, :name, :text

  before_save { |research| research.name = name.downcase }

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :keywords, presence: true
  validates :text, presence: true
end
