
def   decode_morse(str)
  words = []
  words_morse = str.split('   ');
  
  words_morse.each_with_index { |word,idx| 
    words.push([])
    letters = word.split(' ')
    letters.each {|letter|
      if letter == '.-'
        words[idx].push('a')
      elsif letter == '-...'
        words[idx].push('b')
      elsif letter == '-.-.'
        words[idx].push('c')
      elsif letter == '-..'
        words[idx].push('d')
      elsif letter == '.'
        words[idx].push('e')
      elsif letter == '..-.'
        words[idx].push('f')
      elsif letter == '--.'
        words[idx].push('g')
      elsif letter == '....'
        words[idx].push('h')  
      elsif letter == '..'
        words[idx].push('i')
      elsif letter == '.---'
        words[idx].push('j')
      elsif letter == '-.-'
        words[idx].push('k')
      elsif letter == '.-..'
        words[idx].push('l')  
      elsif letter == '--'
        words[idx].push('m')  
      elsif letter == '-.'
        words[idx].push('n')
      elsif letter == '---'
        words[idx].push('o')  
      elsif letter == '.--.'
        words[idx].push('p')  
      elsif letter == '--.-'
        words[idx].push('q')  
      elsif letter == '.-.'
        words[idx].push('r')  
      elsif letter == '...'
        words[idx].push('s')  
      elsif letter == '-'
        words[idx].push('t')  
      elsif letter == '..-'
        words[idx].push('u')
      elsif letter == '...-'
        words[idx].push('v')  
      elsif letter == '.--'
        words[idx].push('w')  
      elsif letter == '-..-'
        words[idx].push('x')  
      elsif letter == '-.--'
        words[idx].push('y')  
      elsif letter == '--..'
        words[idx].push('z')
      end
    }
  }

  words.each{ |e| 
    print e.join + ' '
  }
  puts 
end


decode_morse(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")