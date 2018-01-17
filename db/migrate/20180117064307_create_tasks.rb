class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :detail
      t.string :tag
      t.integer :priority
      t.string :status
      t.datetime :deadline
      t.integer :user_id

      t.timestamps
    end
  end
end
