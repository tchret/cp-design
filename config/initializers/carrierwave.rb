CarrierWave.configure do |config|
  config.fog_credentials = {
                            :provider               => 'AWS',
                            :aws_access_key_id      => Rails.application.secrets.aws_access_key_id,
                            :aws_secret_access_key  =>  Rails.application.secrets.aws_access_key_secret,
                            :region                 => 'eu-west-1'
                           }
  config.fog_directory  = Rails.application.secrets.aws_bucket_name
  config.fog_public     = false
  config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"}
end
