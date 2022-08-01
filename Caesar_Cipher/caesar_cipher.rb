def alphabet(number)
    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789"
    alphabet_encode = ""
    i = number

    while i < alphabet.length
        alphabet_encode += alphabet[i]
        i += 1
    end

    return alphabet_encode
end


def caesar_cipher_encode(text, number)

    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789"
    alphabet_encode = alphabet(number)
    text_encode = ""
    i = 0

    while i < text.length
        j = 0
        while j < alphabet_encode.length
            if text[i] == alphabet[j]
                text_encode += alphabet_encode[j]
                break
            end 
            j += 1
        end
        i += 1
    end

    return text_encode

end

def caesar_cipher_decode(text, number)

    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789"
    alphabet_encode = alphabet(number)
    text_decode = ""
    i = 0

    while i < text.length
        j = 0
        while j < alphabet_encode.length
            if text[i] == alphabet_encode[j]
                text_decode += alphabet_encode[j-number]
                break
            end 
            j += 1
        end
        i += 1
    end

    return text_decode

end

text = gets
number = gets

code = caesar_cipher_encode(text,number)

puts code 

puts caesar_cipher_decode(code,number)
