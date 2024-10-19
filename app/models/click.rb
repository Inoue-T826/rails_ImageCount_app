class Click < ApplicationRecord
  belongs_to :trial, optional: true
  validates :page, presence: true  # ページ番号が空でないことを確認
  validates :button, presence: true  # ボタン番号が空でないことを確認
  
end
