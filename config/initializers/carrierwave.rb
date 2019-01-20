if Rails.env.development?
  
elsif Rails.env.test?
 
else
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAJY4ZDWJOAQ3LNC4A',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'allergen-free-dish'
    config.asset_host = "https://s3.ap-northeast-1.amazonaws.com/allergen-free-dish"

  #config.fog_provider = 'fog/aws'
  end  
 #config.cache_storage = :fog
end

