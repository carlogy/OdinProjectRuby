def caesar_cipher(string, number)
  new_string = string.split('').map do |char|
    if char.ord.between?(65, 90)
      num = char.ord + number
      if num > 90
        char = (num - 90 + 64).chr
      else
        char = num.chr
      end
    elsif char.ord.between?(97, 122)
      num = char.ord + number
      if num > 122
        char = (num - 122 + 96).chr
      else
        char = num.chr
      end
    end
    char
  end
  new_string.join()
end
