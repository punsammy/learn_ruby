def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n=2)
  ("#{string} " * n).strip
end

def first_word(string)
  string.split.first
end

def start_of_word(string, number)
  characters = number-1
  string[0..characters]
end

# def titleize(string)
#   string.split {|word| word.capitalize!}.join (" ")
#     if word == "the" || word == "and" || word == "over"
#     word.downcase
#     unless word.first
#     word.capitalize
#     end
#   end
# end
#
# def titleize(string)
#   string.split.tap { |word| word(0,1,3,4).capitalize! }.join("")
# end

def titleize(string)
 string.split.map(&:capitalize)*' '
end

# def camelcase(string)
#   string.split.tap { |words| words[1].capitalize! }.join
# end

# def test_titleize_not_little_words
#   assert_equal "War and Peace", titleize("war and peace")
# end
#
# def test_titleize_little_words_at_start
#    assert_equal "The Bridge over the River Kwai", titleize("the bridge over the river kwai")
# end
# end
