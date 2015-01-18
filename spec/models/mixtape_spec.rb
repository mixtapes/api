require 'rails_helper'

RSpec.describe Mixtape, :type => :model do
  subject { build(:mixtape) }

  describe 'validation' do
    it 'requires a profile' do
      subject.profile = nil
      expect(subject).to be_invalid
    end

    it 'requires a permalink' do
      subject.permalink = nil
      expect(subject).to be_invalid
    end

    it 'requires a title' do
      subject.title = nil
      expect(subject).to be_invalid
    end
  end

  describe '#to_param' do
    subject { build(:mixtape, permalink: 'whazzzuuuup') }
    it 'delegates to #permalink' do
      expect(subject.to_param).to eql('whazzzuuuup')
    end
  end
end
