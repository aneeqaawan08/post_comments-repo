require 'cloudinary'

Cloudinary.config_from_url("cloudinary://API_KEY:248989752439865@dqkqb0ezf")
Cloudinary.config do |config|
  config.secure = true
end