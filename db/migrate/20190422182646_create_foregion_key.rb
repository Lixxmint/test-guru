class CreateForegionKey < ActiveRecord::Migration[5.2]
  def change
    add_reference(:questions, :tests, foreign_key: true)
    add_reference(:tests, :categories, foreign_key: true)
    add_reference(:answers, :questions, foreign_key: true)
  end
end
