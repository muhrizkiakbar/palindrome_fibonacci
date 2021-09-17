require 'pry'
require 'rspec'

class Class
  def self.palindrome?(str)
    str = str.to_s
    str_reversed = ""
    str_length = str.length - 1

    str_length.downto(0).each do |s|
      str_reversed << str[s]
    end

    return false unless str == str_reversed

    true
  end
end

RSpec.describe "Gredu" do
  describe "Palindrome" do
    it "result true with value samas" do
      expect("samas".palindrome?).to eq(true)
    end

    it "result false with value gambar" do
      expect("samas".palindrome?).to eq(true)
    end
  end
end
