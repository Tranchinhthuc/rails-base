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

FactoryGirl.define do
  factory :translated_source do
    translator_id 1
    content "MyText"
  end
end
