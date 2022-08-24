# method to decode a Morse code character
def decode_char(char)
  characters = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0'
  }
  characters[char]
end

# method to decode an entire word in Morse code
def decode_word(morse_word)
  word = ''
  morse_word.split.each do |char|
    word += decodeChar(char)
  end
  word
end

# method to decode an entire sentence in Morse code
def decode_sentence(morse_sentence)
  sentence = []
  morse_sentence.split('  ').each do |word|
    sentence.push(decode_word(word))
  end
  sentence.join(' ')
end
