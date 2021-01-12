# frozen_string_literal: true

#:nodoc:
module AuthenticateOpenCall
  def authenticate
    if Rails.env.production?
      secret_key = Rails.application.credentials.dig(:authenticate_open_call, :secret_key)
    else
      secret_key = 'bfjvbfifbviwfvbehib2ib234r435b2432hj123hj131b2h3j1'
    end

    return if request.headers['Authorization'] == secret_key

    error_response(401, 'Invalid Access Token')
  end
end
