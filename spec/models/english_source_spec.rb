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

require 'rails_helper'

RSpec.describe EnglishSource, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
