require 'pry'
require 'rspec'

class String
  def palindrome?
    str_reversed = ""
    str_length = self.length - 1

    str_length.downto(0).each do |s|
      str_reversed << self[s]
    end

    return false unless self == str_reversed

    true
  end
end

RSpec.describe "Gredu" do
  describe "Palindrome" do
    it "result true with value samas" do
      expect("samas".palindrome?).to eq(true)
    end

    it "result false with value gambar" do
      expect("gambar".palindrome?).to eq(false)
    end
  end
end

def fibonacci(number_index)
  return number_index if (0..1).include? number_index
  ( fibonacci(number_index - 1) + fibonacci(number_index - 2) )
end

puts fibonacci(8)
# result 21
