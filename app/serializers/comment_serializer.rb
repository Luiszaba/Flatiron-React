class CommentSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :comment
end
