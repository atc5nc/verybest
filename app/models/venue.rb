class Venue < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
