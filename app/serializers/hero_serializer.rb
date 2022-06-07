class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :universe, :gender
  belongs_to :universe
end
