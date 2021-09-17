require 'pry'
require 'rspec'

class TestGredu
  def self.palindrome(str)
    str = str.to_s
    str_reversed = ""
    str_length = str.length - 1

    str_length.downto(0).each do |s|
      str_reversed << str[s]
    end

    raise "Ups we are not palindrome, sorry :)" unless str == str_reversed

    str_reversed
  end
end

RSpec.describe "Gredu" do
  describe "Palindrome" do
    it "valid result with value samas" do
      expect(TestGredu.palindrome("samas")).to eq("samas")
    end

    it "valid result with value 11211" do
      expect(TestGredu.palindrome(11211)).to eq("11211")
    end

    it "valid result with value 11211" do
      expect { raise "Ups we are not palindrome, sorry :)"}.to raise_error("Ups we are not palindrome, sorry :)")
    end
  end
end
