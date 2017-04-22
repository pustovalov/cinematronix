class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration, :description, :image
end
