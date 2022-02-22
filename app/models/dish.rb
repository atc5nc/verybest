class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :favorites,
             dependent: :destroy

  # Indirect associations

  has_many   :venues,
             through: :favorites,
             source: :venue

  has_many   :users,
             through: :favorites,
             source: :user

  # Validations

  # Scopes

  def to_s
    name
  end
end
