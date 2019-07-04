# frozen_string_literal: true

def fetch_number_of_vowel(alphabet = {}, counter = 0)
  ('a'..'z').each do |letter|
    alphabet[letter.to_s] = counter if %w[a e i o u].include? letter
    counter += 1
  end
  alphabet
end

puts fetch_number_of_vowel
