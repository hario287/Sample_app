class List < ApplicationRecord
  has_one_attached :image
  #↑ ActiveStorageを使って画像を表示する際の宣言

  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
  #↑ バリデーションを設定
  #validatesで対象とする項目を指定し、
  #入力されたデータのpresence（存在）をチェックします。
  #trueと記述すると、データが存在しなければならないという設定になる
end
