class UserSerializer < ActiveModel::Serializer
  attributes :id, :bearer_token, :app_name

  def id
    object.uid
  end

  def bearer_token
    object.access_grant.access_token
  end

  def app_name
    'wheres_waldo'
  end
end
