MORSE_DICT = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

def decode_helper(code)
  if MORSE_DICT[code]
    MORSE_DICT[code]
  elsif code == ''
    ' '
  else
    code
  end
end

# Add code here vishal

def decode_morse(morse)
  decoded = ''
  morse_array = morse.split(/\s/)
  morse_array.each { |code| decoded << decode_helper(code) }
  decoded.upcase
end

puts decode_char('.-').to_s
# A
puts decode_word('-- -.--').to_s
# MY
puts decode_morse('-- -.--   -. .- -- .')
# MY NAME
puts decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...').to_s
# A  BOX  FULL  OF/RUBIES
