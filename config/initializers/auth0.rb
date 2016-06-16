Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'OaaRzsLcJSodX1LoyCLLkaMaKSwGpxkC',
    'wt8wQLwYLCS-3beU53Wm-tfsqp2kqvCw6vtDut4fTDXzNWrqIcyszMar91IL3I1Y',
    'app52272635.auth0.com',
    callback_path: "/auth/auth0/callback"
  )
end