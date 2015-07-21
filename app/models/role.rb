class Role
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :desc, type: String
  field :permissions, type: Array

  has_and_belongs_to_many :user
  has_and_belongs_to_many :permissions
end
