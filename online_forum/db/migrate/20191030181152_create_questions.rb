class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :user
      t.string :value
      t.string :comments
      t.integer :votes

      t.timestamps
    end
  end
end
