# frozen_string_literal: true

def fetch_number_of_vowel(alphabet = {}, counter = 0)
  ('a'..'z').each do |letter|
    alphabet[letter.to_s] = counter if %w[a e i o u].include? letter
    counter += 1
  end
  alphabet
end

def calculate_number_of_vowel(array_of_letters,   list = {})
  array_of_letters.each_with_index { |letter, index| list[letter] = index}.select{|letter, _index| %w[a e i o u].include? letter}
end

puts calculate_number_of_vowel('a'..'z')
