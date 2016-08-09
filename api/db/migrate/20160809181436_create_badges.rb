class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :content
      t.references :teacher, index: true, foreign_key: true
      t.integer :vote_count

      t.timestamps null: false
    end
  end
end
