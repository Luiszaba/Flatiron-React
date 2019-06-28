class MusicSerializer < ActiveModel::Serializer
    attributes :id, :title, :artist, :genre, :length
end
