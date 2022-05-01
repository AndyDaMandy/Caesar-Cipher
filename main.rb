def newchar(char, move)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  a_split = alphabet.split("")
  caps = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  caps_split = caps.split("")
  if caps_split.include?(char) == true || a_split.include?(char) == true
    if char == char.upcase
      index = caps_split.find_index(char)
      index += move
      return caps_split[index % 26]
    elsif char == char.downcase
      index = a_split.find_index(char)
      puts index
      index += move
      return a_split[index % 26]
    end
  else
    return char
  end
end
def cipher(shift, text)
  arr = text.split("")
  final = arr.map {|b| newchar(b, shift)}
  return final.join("")
end
puts cipher(5, "This is a cool caesar Cipher Program!")

