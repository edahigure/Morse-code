def decode_morse(str)
  dict = { '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e',
           '..-.' => 'f', '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j',
           '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o',
           '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't', 
           '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y', 
           '--..' => 'z' }
  words = []
  words_morse = str.split('   ')
  words_morse.each_with_index do |word, idx|
    words.push([])
    letters = word.split
    letters.each do |letter|
      words[idx].push(dict[letter])
    end
  end
  words.each do |e|
    print "#{e.join} "
  end
  puts
end
decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
