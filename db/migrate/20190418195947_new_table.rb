class NewTable < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level
      t.integer :category_id

      t.timestamps
    end
    create_table :questions do |t|
      t.string :body
      t.integer :test_id

      t.timestamps
    end
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
    create_table :answers do |t|
      t.boolean :correct
      t.string :body
      t.integer :question_id

      t.timestamps
    end
    create_table :categories do |t|
      t.string :title
      t.integer :test_id

      t.timestamps
    end

    # значения по умолчанию
    change_column_default :tests, :level, from: 0, to: 0
    change_column_default :answers, :correct, from: true, to: false

    #создание вешнего ключа
    add_foreign_key :questions, :tests
    add_foreign_key :tests, :categories
    add_foreign_key :answers, :questions

    #нулевые значения
    change_column_null :tests, :title, false
    change_column_null :questions, :body, false
    change_column_null :users, :username, false
    change_column_null :users, :password, false
    change_column_null :categories, :title, false
    change_column_null :answers, :correct, false
    change_column_null :answers, :body, false
  end
end
