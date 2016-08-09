class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.text :text
      t.integer :votes
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
