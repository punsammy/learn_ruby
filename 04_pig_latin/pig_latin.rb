def translate(string)
  string = string.downcase
  vowels = ['a', 'e', 'i', 'o', 'u']
  words = string.split(' ')
  result = []

  words.each_with_index do |word, i|
    translation = ''
    qu = false
    if vowels.include? word[0]
      translation = word + 'ay'
      result.push(translation)
    else
      word = word.split('')
      count = 0
      word.each_with_index do |char, index|
        if vowels.include? char
          # handle words that start with 'qu'
          if char == 'u' and translation[-1] == 'q'
            qu = true
            translation = words[i][count + 1..words[i].length] + translation + 'uay'
            result.push(translation)
            next
          end
          break
        else
          # handle words with 'qu' in middle
          if char == 'q' and word[i+1] == 'u'
            qu = true
            translation = words[i][count + 2..words[i].length] + 'quay'
            result.push(translation)
            next
          else
            translation += char
          end
          count += 1
        end
      end
      # translation of consonant words without qu
      if not qu
        translation = words[i][count..words[i].length] + translation + 'ay'
        result.push(translation)
      end
    end

  end
  result.join(' ')
end


# def translate(string)
#   string.split.each do |word|
#     if word.start_with? ("a")
#       new_word = word + "ay"
#     elsif word.start_with? ("e")
#       new_word = word + "ay"
#     elsif word.start_with? ("i")
#       new_word = word + "ay"
#     elsif word.start_with? ("o")
#       new_word = word + "ay"
#     elsif word.start_with? ("u")
#       new_word = word + "ay"
#     elsif word.start_with? ("y")
#       new_word = word + "ay"
#     else
#       new_word = move_consonant(word) + "ay"
#     end
#   end
# end


# def translate(word)
#   word.each do |word|
#     if word.start_with? ("a")
#       new_word = word + "ay"
#     elsif word.start_with? ("e")
#       new_word = word + "ay"
#     elsif word.start_with? ("i")
#       new_word = word + "ay"
#     elsif word.start_with? ("o")
#       new_word = word + "ay"
#     elsif word.start_with? ("u")
#       new_word = word + "ay"
#     elsif word.start_with? ("y")
#       new_word = word + "ay"
#     else
#       new_word = move_consonant(word) + "ay"
#     end
#   end
# end
# #
# def translate(word)
#   word.each do |word|
#     if word.start_with? ("a","e","i","o","u","y")
#       new_word = word + "ay"
#     else
#       new_word = move_consonant(word) + "ay"
#     end
#   end
# end
#
# def translate (str)
#   str1="aeiou"
#   str2=(/\A[aeiou]/)
#   vowel = str1.scan(/\w/)
#   alpha =('a'..'z').to_a
#   con = (alpha - vowel).join
#   word = str.scan(/\w/)
#   if
#     str =~ str2
#     str + "ay"
#   elsif
#     str != str2
#     s = str.slice!(/^./)
#     str + s + "ay"
#   elsif
#     word[0.1]=~(/\A[con]/)
#     s = str.slice!(/^../)
#     str + s + "ay"
#   else
#     word[0..2]=~(/\A[con]/)
#     s = str.slice!(/^.../)
#     str + s + "ay"
#   end
# end
