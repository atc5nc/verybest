class User < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    email
  end

end
