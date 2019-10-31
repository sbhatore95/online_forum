class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :comment
      t.integer :question
      t.integer :user
      t.string :value

      t.timestamps
    end
  end
end
