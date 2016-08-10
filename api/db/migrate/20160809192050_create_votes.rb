class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :vote_type
      t.references :student
      t.references :badge

      t.timestamps null: false
    end
  end
end
