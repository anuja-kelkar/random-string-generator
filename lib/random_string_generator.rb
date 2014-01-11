class RandomStringGenerator
  def self.generate_of_length(size)
    (('a'..'z').to_a + (0..9).to_a).to_a.sample(size).join
  end
end