class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :username, :string

  # Direct associations

  has_many   :favorites

  # Indirect associations

  has_many :venues do
    assign_each do |user, venues|
      venues.select do |v|
        v.id.in?(user.venues.map(&:id))
      end
    end
  end


  filter :venue_id, :integer do
    eq do |scope, value|
      scope.eager_load(:venues).where(:favorites => {:venue_id => value})
    end
  end
end
