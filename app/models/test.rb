class Test < ApplicationRecord
  def self.titles_by_category(category)
    Test.by_category(category).order(title: :desc).pluck(:title)
  end
end
