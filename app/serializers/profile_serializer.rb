class ProfileSerializer < ApplicationSerializer

  attributes :id, :name

  url :profile

  def id
    object.permalink
  end

end
