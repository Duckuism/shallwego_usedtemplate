require 'carrierwave/orm/activerecord'
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIAIWO2AT3HIQL4GETA',                        # required
      aws_secret_access_key: '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',                        # required
      region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
      # host:                  's3.example.com',             # optional, defaults to nil
      # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'shallwego'                          # required
  # config.fog_public     = false                                        # optional, defaults to true
  # config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" } # optional, defaults to {}
end