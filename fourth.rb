# frozen_string_literal: true

def fetch_number_of_vowel
  alphabet = {}
  i = 0
  ('a'..'z').each do |letter|
    alphabet[letter.to_s] = i if %w[a e i o u].include? letter
    i += 1
  end
  puts alphabet
end

fetch_number_of_vowel
