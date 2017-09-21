# == Schema Information
#
# Table name: translated_sources
#
#  id                :integer          not null, primary key
#  translator_id     :integer
#  english_source_id :integer
#  language_id       :integer
#  status            :integer          default("enable"), not null
#  content           :text(65535)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class TranslatedPost < ApplicationRecord
  belongs_to :translator, class_name: 'User'
  belongs_to :post
  belongs_to :language
  enum status: {
    enable: 0,
    disable: 1
  }
end
