class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  has_many   :dishes,
             :through => :favorites,
             :source => :dish

  has_many   :users,
             :through => :dishes,
             :source => :users

  # Validations

  # Scopes

  def to_s
    name
  end

end
