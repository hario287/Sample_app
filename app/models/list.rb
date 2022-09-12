class List < ApplicationRecord
  has_one_attached :image
  #↑ ActiveStorageを使って画像を表示する際の宣言
end
