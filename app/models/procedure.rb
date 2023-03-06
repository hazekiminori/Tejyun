class Procedure < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :additional_changes, dependent: :destroy
  belongs_to :category
  belongs_to :user
  
  has_one_attached :image
  
  validates :title, presence: true
  validates :body, presence: true
  validates :item, presence: true
  validates :image, presence: true
end
