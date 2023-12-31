class Recipe < ApplicationRecord
  belongs_to :user

  scope :public_recipes, -> { where(public: true).order(created_at: :desc) }
  attribute :public, :boolean, default: false
end
