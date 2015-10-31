class LuxuryCoffee < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
