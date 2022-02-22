class User < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             dependent: :destroy

  # Indirect associations

  has_many   :dishes,
             through: :favorites,
             source: :dish

  has_many   :venues,
             through: :dishes,
             source: :venues

  # Validations

  # Scopes

  def to_s
    email
  end
end
