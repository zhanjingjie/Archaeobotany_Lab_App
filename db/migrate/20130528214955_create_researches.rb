class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :name
      t.text :keywords
      t.text :text

      t.timestamps
    end
  end
end
