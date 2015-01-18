class Profile
  include Mongoid::Document
  field :name, type: String
  field :permalink, type: String

  validates :name, presence: true
  validates :permalink, presence: true

  def to_param
    permalink
  end
end
