# == Schema Information
#
# Table name: english_sources
#
#  id         :integer          not null, primary key
#  content    :text(65535)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  has_many :translated_posts, dependent: :destroy
  belongs_to :user
  belongs_to :language
  belongs_to :desired_language, class_name: 'Language', foreign_key: 'desired_language_id'
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :votes
  has_many :comments, as: :target

  validates :content, presence: true

  def self.e_search(query)

  end
end
