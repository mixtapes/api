class ProfileSerializer < ApplicationSerializer

  attributes :id, :name, :href

  def id
    object.permalink
  end

  def href
    profile_path(object)
  end

end
