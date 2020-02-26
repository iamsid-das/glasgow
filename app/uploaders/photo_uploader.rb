class PhotoUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick
  
    storage :fog
  
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  
    version :thumbnail do
     process :resize_to_limit => [250, 250]
    end

    version :photo do
      process :resize_to_limit => [550, 350]
     end
  
    def extension_white_list
     %w(jpg jpeg gif png)
    end
  end