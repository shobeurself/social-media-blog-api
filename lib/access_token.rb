class AccessToken
  class << self
    def encode(payload)
      exp = 1.days.from_now
      payload[:exp] = exp.to_i
      key = Rails.application.secret_key_base
      JWT.encode(payload, key)
    end

    def decode(token)
      key = Rails.application.secret_key_base
      JWT.decode(token, key)
    end

    def get_user_from_token(token)
      begin
        response = self.decode(token)
      rescue
        return token
      end
      payload = response[0]
      user_id = payload["user_id"]
      User.find(user_id)
    end
  end
end
