class PlaylistSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :music_id
end
