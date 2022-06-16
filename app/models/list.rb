class List < ApplicationRecord
  has_one_attached :image

  validates :title,presence: true
  validates :body,presence: true
  
  #rails cで画像を扱う場合は複雑になるためコメントアウトして、
  #タイトルと本文のみで投稿できるように変更する
 validates :image,presence: true
end
