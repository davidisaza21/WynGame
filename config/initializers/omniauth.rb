OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1732509093643371', 'a2804dff78f0965b8bd493db33aa05fb',
           :scope => 'email'
end
