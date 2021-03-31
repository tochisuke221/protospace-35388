class Comment < ApplicationRecord
  belongs_to :user,dependent: :destroy
  belongs_to :prototype,dependent: :destroy

  validates :comment,presence:true
end
