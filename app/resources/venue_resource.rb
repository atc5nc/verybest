class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :address, :string
  attribute :neighborhood_id, :integer

  # Direct associations

  belongs_to :neighborhood

  has_many   :favorites

  # Indirect associations

  many_to_many :dishes

  has_many :users do
    assign_each do |venue, users|
      users.select do |u|
        u.id.in?(venue.users.map(&:id))
      end
    end
  end

  filter :user_id, :integer do
    eq do |scope, value|
      scope.eager_load(:users).where(favorites: { user_id: value })
    end
  end
end
