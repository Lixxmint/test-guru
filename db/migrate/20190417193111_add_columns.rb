class AddColumns < ActiveRecord::Migration[5.2]
  def change
    change_table :questions do |t|
      t.integer :test_id
    end
    change_table :tests do |t|
      t.integer :category_id
    end
  end
end
