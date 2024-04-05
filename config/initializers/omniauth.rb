Rails.application.config.middleware.use OmniAuth::Builder do
    provider :auth0,
             ENV['YMFRTd93tufhWB1hmCG0165Qlej9KfdJ'],
             ENV['U5gBI8jbCHjirWLADlo4oTAskEL-HdtbYma_HbpxaxGlNxl7uSUBW-jehT839rN0'],
             ENV['dev-wl41sk6pztsz2yzl.us.auth0.com'],
             callback_path: '/auth/auth0/callback'
  end