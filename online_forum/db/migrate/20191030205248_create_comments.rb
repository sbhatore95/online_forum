class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :user
      t.string :question
      t.string :reply
      t.integer :votes
      t.string :value

      t.timestamps
    end
  end
end
