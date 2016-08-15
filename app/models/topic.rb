class Topic < ApplicationRecord
  validates :title, :presence => true
  validates :body, :presence => true
  belongs_to :user
  belongs_to :node
  scope :recently, ->{order(created_at: :desc).limit(10)}
  scope :cream, ->{where(cream: true, deleted: nil)}
  scope :active, ->{where(deleted_at: nil)}
end
