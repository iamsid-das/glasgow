CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                                         # required
      aws_access_key_id:     'AKIAIMUINA7W4V2DJJFA',                        # required unless using use_iam_profile
      aws_secret_access_key: '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',    # required unless using use_iam_profile
      use_iam_profile:       true,                                          # optional, defaults to false
      region:                'EU (London)',                                 # optional, defaults to 'us-east-1'
      host:                  's3.example.com',                              # optional, defaults to nil
      endpoint:              'https://s3.example.com:8080'                  # optional, defaults to nil
    }
    config.fog_directory  = 'image-uploads-reservezy'                                      # required
    config.fog_public     = false                                                 # optional, defaults to true
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  end