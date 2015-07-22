module JSONApiExampleGroup
  extend ActiveSupport::Concern

  included do
    subject { response }

    let(:body) { JSON.parse(response.body) }
    let(:data) { body['data'] }
  end

  RSpec.configure do |config|
    config.include self, type: :controller, file_path: %r[spec/controllers]
  end
end
