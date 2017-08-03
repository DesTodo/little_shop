class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :courses
  validates_presence_of :title

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
