class Playlist < ApplicationRecord
    has_many :users
    has_many :comments, through: :users
end
