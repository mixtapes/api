require 'rails_helper'

RSpec.describe Profile, :type => :model do
  subject { build(:profile) }

  describe 'validation' do
    it 'requires a name' do
      subject.name = nil
      expect(subject).to be_invalid
    end
  end

  describe '#to_param' do
    subject { build(:profile, permalink: 'whazzzuuuup') }
    it 'delegates to #permalink' do
      expect(subject.to_param).to eql('whazzzuuuup')
    end
  end
end
