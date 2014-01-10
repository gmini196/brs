class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

	has_one :review
	has_one :favourite
	has_one :read
	has_one :comment
	has_one :relationship

	has_many :likes

  scope :list_activities, lambda { |user_id| where("user_id IN
  (SELECT following_id FROM relationships WHERE follower_id = :user_id)
  OR user_id = :user_id", user_id: user_id).order("created_at DESC")}

  def liked? user
    !self.likes.find_by(user_id: user.id).nil?
  end

  def liked user
    self.likes.find_by(user_id: user.id)
  end
end
