class AddIntegrityConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null :tests, :title, false
    change_column_null :questions, :body, false
    change_column_null :users, :username, false
    change_column_null :users, :password, false
    change_column_null :categories, :title, false
    change_column_null :answers, :correct, false
    change_column_null :answers, :body, false

    change_column_default :answers, :correct, false
    change_column_default :tests, :level, 0
  end
end
