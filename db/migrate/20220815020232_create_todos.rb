class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :body
      t.integer :importance
      t.integer :user_id # this is our foreign key
      t.timestamps # generates created_at and updated_at columns
    end
  end
end
