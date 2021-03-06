class Blog < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  validates :title,   presence: true,
                        length: { maximum: 20 }
  validates :content, presence: true,
                        length: { maximum: 140 }
end
