class AddIndexToResearchesName < ActiveRecord::Migration
  def change
  	add_index :researches, :name, unique: true
  end
end
