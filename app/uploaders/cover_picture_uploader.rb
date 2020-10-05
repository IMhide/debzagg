class CoverPictureUploader < ApplicationUploader

  def image?(io)
    %w[image/jpeg image/png].include?(io.content_type)
  end
end
