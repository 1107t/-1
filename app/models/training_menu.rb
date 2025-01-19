class TrainingMenu < ApplicationRecord
  has_many :user_training_menus
  has_many :users, through: :user_training_menus
end
