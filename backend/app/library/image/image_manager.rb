require File.expand_path('../../../../backend/app/library/storage/s3_client', __dir__)

module App::Library::Image
  class ImageManager
    S3_BASE = 'images'

    def initialize
      @s3 = App::Library::Storage::S3Client.new
    end

    def create(file)
      @s3.upload(S3_BASE + '/' + file[:filename], file[:tempfile])
    end
  end
end
