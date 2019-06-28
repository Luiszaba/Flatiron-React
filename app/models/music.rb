class Music < ApplicationRecord
    has_many :playlists
    has_many :users, through :playlists
end
