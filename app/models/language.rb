# == Schema Information
#
# Table name: languages
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Language < ApplicationRecord
  has_many :translated_posts, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :desired_posts, foreign_key: 'desired_language_id'
end
