def caesar_cipher(string, num)
cipher = ''
if num<0
  num+=26
end
string.split('').each do |letter|
  if letter.match(/[a-z]/i)
    if letter.ord+num <= 90
      cipher += (((letter.ord-65+num)%26)+65).chr
    end
    if letter.ord+num >= 97
      cipher += (((letter.ord-97+num)%26)+97).chr
    end
  else
    cipher += letter
  end
end
return cipher
end