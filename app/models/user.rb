require 'digest'

class User
  include Mongoid::Document
  include Mongoid::Timestamps

  # 基础信息
  field :username, type: String
  field :password_hash, type: String
  field :email, type: String
  field :mobile, type: String

  # 激活验证
  field :activate_token, type: String
  field :active_token_at, type: DateTime
  field :is_activated, type: Boolean

  # 忘记密码
  field :pass_reset_token, type: String
  field :pass_reset_token_at, type: DateTime
  field :pass_reset_at, type: DateTime

  # 跟踪登录信息
  field :last_login_at, type: DateTime
  field :last_login_ip, type: String
  field :current_login_at, type: DateTime
  field :current_login_ip, type: String

  # 是否是超级管理员
  field :is_super, type: Boolean

  # 用户是否被禁用
  field :is_blocked, type: Boolean

  # 用户角色
  has_and_belongs_to_many :roles

  # 验证
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true
  validates :password, confirmation: true

  def activated?
    self.is_activated == 1
  end

  def password=(password)
    self.password_hash = Digest::MD5.hexdigest(password || "")
  end

  def reset_password(password)
    self.password = password
  end

  def has_role?(role)
  end

  def can? 
  end

  def super?
    self.is_super
  end

end
