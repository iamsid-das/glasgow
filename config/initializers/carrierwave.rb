CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AKIAJN6QW7RY72TOMUCA'],
      aws_secret_access_key: ENV['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'],
      region:                ENV['S3_REGION'],
  }
  config.fog_directory  = ENV['image-uploads-reservezy']
end