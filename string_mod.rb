# Listing 4.15 - Chapter 4 -  Add method to String class
class String
  def shuffle
    self.split("").shuffle.join
  end
end

# Listing 4.14 - Chapter 4 - complete the stand-alone method below

# def string_shuffle(s)
#   s.?('').?.?
# end
# string_shuffle("foobar")
# "oobfra"

# My solution to 4.14

# def string_shuffle(word)
# word.split("").shuffle.join
# end