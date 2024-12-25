# @param {String} s
# @return {String}
def reverse_words(str)
  str.split(' ').reverse.join(' ')
end