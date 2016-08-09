class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.integer :votes
      t.string :text
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
