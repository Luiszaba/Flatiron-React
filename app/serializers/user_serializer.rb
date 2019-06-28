class UserSerializer < ActiveModel::Serializer
    attributes: :id, :name, :username, :email, :password, :icon
end