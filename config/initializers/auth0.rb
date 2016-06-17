Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'OaaRzsLcJSodX1LoyCLLkaMaKSwGpxkC',
    ENV["AUTH0_CLIENT_SECRET"],
    'app52272635.auth0.com',
    callback_path: '/auth/auth0/callback'
  )
end