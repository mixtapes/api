require 'rails_helper'

RSpec.describe ProfileSerializer, :type => :serializer do

  context 'Individual Resource Representation' do
    let(:resource) { build(:profile) }

    let(:serializer) { ProfileSerializer.new(resource) }
    let(:serialization) { ActiveModel::Serializer::Adapter.create(serializer) }

    subject do
      JSON.parse(serialization.to_json)['profiles']
    end

    it 'has an id that matches #permalink' do
      expect(subject['id']).to eql(resource.permalink)
    end

    it 'has a name' do
      expect(subject['name']).to eql(resource.name)
    end
  end
end
