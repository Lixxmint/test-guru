class User < ApplicationRecord
  def tests_passage(level)
    Test.joins(:test_passages).where(test_passages: {user_id: id}).by_level(level)
  end
end
