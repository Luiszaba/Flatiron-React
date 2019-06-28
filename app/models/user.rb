class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true

    has_many :playlists
    has_many :comments, through: :playlists
end
