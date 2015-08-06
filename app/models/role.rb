class Role
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :desc, type: String

  has_and_belongs_to_many :users
  has_and_belongs_to_many :permissions
end
