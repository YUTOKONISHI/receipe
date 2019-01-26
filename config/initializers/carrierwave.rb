if Rails.env.development?
  
elsif Rails.env.test?
 
else


end



  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['S3_ACCESS_KEY'],
      aws_secret_access_key: ENV['S3_SECRET_KEY'],
      region: ENV['S3_REGION'],
      path_style: true
    }

    config.fog_public = true

    config.fog_directory  = 'allergen-free-dish'
    config.asset_host = "https://allergen-free-dish.s3-ap-northeast-1.amazonaws.com"
     config.cache_storage = :fog
   end 
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
