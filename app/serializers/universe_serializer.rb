class UniverseSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :heroes
end
