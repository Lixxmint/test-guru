class DropTable < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :questions, :tests
    remove_foreign_key :tests, :categories
    remove_foreign_key :answers, :questions

    drop_table :tests
    drop_table :questions
    drop_table :users
    drop_table :categories
    drop_table :answers
  end
end
