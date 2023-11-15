class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: ["french", "japanese", "italian", "belgian", "chinese"], message: "Not a valid Category" }
end
