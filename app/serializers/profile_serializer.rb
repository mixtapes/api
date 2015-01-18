class ProfileSerializer < ActiveModel::Serializer

  attributes :id, :name

  url :profile

  def id
    object.permalink
  end

end
