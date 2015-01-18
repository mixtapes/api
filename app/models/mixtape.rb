class Mixtape
  include Mongoid::Document

  field :title, type: String
  field :permalink, type: String

  # Associations
  embedded_in :profile

  # Validations
  validates :title, presence: true
  validates :permalink, presence: true
  validates :profile, presence: true

  def to_param
    permalink
  end
end
