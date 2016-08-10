class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :content, null: false
      t.integer :teacher_id, null: false

      t.timestamps null: false
    end
  end
end
