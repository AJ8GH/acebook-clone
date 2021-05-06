class Post < ApplicationRecord
  belongs_to :user

  acts_as_votable

  def less_than_ten_minutes_old?
    Time.now.to_i < created_at.since(600).to_i
  end
end
