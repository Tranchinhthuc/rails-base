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

FactoryGirl.define do
  factory :english_source do
    conten "MyText"
    user_id 1
  end
end
