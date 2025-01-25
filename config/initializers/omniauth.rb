Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
           '699253221267-fj48an58lh5g3tgi4ud19pioh0hfiggl.apps.googleusercontent.com',
           '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'
           
end


