class Post < ApplicationRecord
  belongs_to :user

  acts_as_votable

  def created_ten_minutes_ago?
    Time.now.to_i < created_at.since(600).to_i
  end
end
