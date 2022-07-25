def caesar_cipher(string, num = 0)
    cipher = ""
    if num<0
        num += 26
        
    end
    string.each_char do |letter|
        if letter.match(/[a-z]/i)
            c = letter.ord
            if c <= 90
                cipher += ((c-65+num)%26+65).chr
                
            end
            if c >= 97
                cipher += ((c-97+num)%26+97).chr
                
            end
        else
            cipher += letter
            
        end
    end
    return cipher
end