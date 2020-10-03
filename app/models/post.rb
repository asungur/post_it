class Post < ApplicationRecord
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :comments
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :votes, as: :votable
  validates :title, presence: true, length: { minimum: 5 }
  validates :description, presence: true
  validates :url, presence: true

  def total_votes
    self.up_votes - self.down_votes
  end

  def sorted_comments
    self.comments.sort_by { |comment| comment.total_votes }.reverse
  end

  def up_votes
    votes.where(vote: true).length
  end

  def down_votes
    votes.where(vote: false).length
  end
end
