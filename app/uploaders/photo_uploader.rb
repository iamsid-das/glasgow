class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

include Sprockets::Helpers::RailsHelper
include Sprockets::Helpers::IsolatedHelper

include CarrierWave::MimeTypes
process :set_content_type

  storage :fog
  def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
      process :resize_to_fit => [30,30]
    end
  end 