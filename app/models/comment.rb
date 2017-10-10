class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :target, polymorphic: true, dependent: :destroy
end
