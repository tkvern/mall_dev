class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :username, type: String, localize: true
  field :pasword_hash, type: String
  field :email, type: String
  field :mobile, type: String
  field :activate_token, type: String
  field :active_token_at, type: DateTime
  field :is_activated, type: Integer
  field :pass_reset_token, type: String
  field :pass_reset_token_at, type: DateTime
  field :pass_reset_at, type: DateTime
  field :last_login_at, type: DateTime
  field :last_login_ip, type: String
  field :current_login_at, type: DateTime
  field :current_login_ip, type: String
  
  has_and_belongs_to_many :roles
end
