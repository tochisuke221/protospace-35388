class Prototype < ApplicationRecord
  
  has_many :comments
  belongs_to :user
  has_one_attached :image
  #これだけで、なぜ結びつくのか、不明
  #→おそらくActiveStorageによって使えるメソッドのため

  #migrationファイルに記載しているのになぜ必要なのか不明→空文字すらも拒否するため
  validates :title,presence:true
  validates :catch_copy,presence:true
  validates :concept,presence:true
  
end
