require 'aws-sdk-s3'

module App::Library::Storage
  class S3Client
    CONFIG_PATH = '../../../config/aws/s3.yml'

    def initialize(bucket = nil)
      path = File.expand_path(CONFIG_PATH, __dir__)
      yaml = YAML.load_file(path)
      config = yaml[$env]

      options = {
          region: config['region'].to_s,
          credentials: Aws::Credentials.new(config['access_key'], config['secret_key'])
      }

      Aws.config.update(options)

      bucket ||= config['bucket']
      client = Aws::S3::Resource.new
      @bucket = client.bucket(bucket)
    end

    def upload(base, file)
      object = @bucket.object(base)
      object.put(body: file)
    end
  end
end
