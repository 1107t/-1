class TrainingHistory < ApplicationRecord
  belongs_to :user
  
  validates :body_part, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
  
  # 部位の列挙型を定義（オプション）
  enum body_part: {
    chest: 0,
    back: 1,
    shoulder: 2,
    arms: 3,
    abs: 4,
    thighs: 5
  }
end
