def encrypt(string)
  index = 0
  while index < string.length
  string[index] = string[index].next
  index += 1
  end
  p string
end

encrpypt("loop")