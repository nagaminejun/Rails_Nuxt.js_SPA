class UserSerializer < ActiveModel::Serializer
  # ここから記述
    attributes :id, :title, :user_id, :username
    belongs_to :user
  
    def username
      object.user.name
    end
  # ここまで記述
  end
  