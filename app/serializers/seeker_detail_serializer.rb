class SeekerDetailSerializer < ActiveModel::Serializer
  attributes :id
  has_one :seeker
end
