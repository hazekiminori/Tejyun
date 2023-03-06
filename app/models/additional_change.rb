class AdditionalChange < ApplicationRecord
  belongs_to :user
  belongs_to :procedure
  
  validates :body, presence: true
  validates :reason, presence: true
end
