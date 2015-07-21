json.array!(@users) do |user|
  json.extract! user, :id, :username, :pasword_hash, :email, :mobile, :activate_token, :active_token_at, :is_activated, :pass_reset_token, :pass_reset_token_at, :pass_reset_at, :last_login_at, :last_login_ip, :current_login_at, :current_login_ip, :roles
  json.url user_url(user, format: :json)
end
