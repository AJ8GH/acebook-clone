class Post < ApplicationRecord
  belongs_to :user

  acts_as_votable

  def update_time_check
    Time.now.to_i < created_at.since(600).to_i
  end
end
