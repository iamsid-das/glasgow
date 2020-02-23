CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                                         # required
      aws_access_key_id:     'AKIAJN6QW7RY72TOMUCA',                        # required unless using use_iam_profile
      aws_secret_access_key: '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',    # required unless using use_iam_profile
      use_iam_profile:       true,                                          # optional, defaults to false
      region:                'us-east-1',                                 # optional, defaults to 'us-east-1'
      host:                  's3.image-uploads-reservezy.com',                              # optional, defaults to nil
      endpoint:              'https://s3.image-uploads-reservezy.com:8080'                  # optional, defaults to nil
    }
    config.fog_directory  = 'image-uploads-reservezy'                                      # required
    config.fog_public     = false                                                 # optional, defaults to true
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  end