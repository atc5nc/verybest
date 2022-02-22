class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
