require 'spec_helper'

describe ::RandomStringGenerator do
  describe '.generate_of_length' do
    it 'should accept (:size) as a parameter' do
      expect(RandomStringGenerator).to receive(:generate_of_length).with(:size)
      RandomStringGenerator.generate_of_length(:size)
    end

    it 'should generate string of length specified' do
      size=6
      expect(RandomStringGenerator.generate_of_length(size)).to be_a_kind_of(String)
      expect(RandomStringGenerator.generate_of_length(size).length).to eq 6
    end

    it 'should generate random strings' do
      random_string = RandomStringGenerator.generate_of_length(8)
      another_random_string = RandomStringGenerator.generate_of_length(8)
      expect(random_string).not_to eq another_random_string
    end
  end
end