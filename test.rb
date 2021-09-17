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

$counter = 0
def fibonacci(number_index)
  puts "jalan" + number_index.to_s
  puts "stop " + number_index.to_s if (0..1).include? number_index
  return number_index if (0..1).include? number_index
  $counter += 1
  puts "*" * $counter
  puts "kalian ke " + $counter.to_s
  puts "hasil pengurangan 1 = " + (number_index - 1).to_s
  puts "hasil pengurangan 2 = " + (number_index - 2).to_s
  ( fibonacci(number_index - 1) + fibonacci(number_index - 2) )
end

puts fibonacci(3)

