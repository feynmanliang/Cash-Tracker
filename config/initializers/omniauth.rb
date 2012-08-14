if Rails.env == "production"
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '271409242963233', 'b7b4687743d390b48d6097ed7b038f40'
  end
else
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '269880776446447', 'a0e41a480ff3fb317c85868d87739d7f'
  end
end
