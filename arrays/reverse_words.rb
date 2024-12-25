# @param {String} s
# @return {String}
def reverse_words(str)
  str.split(' ').reverse.join(' ')
end

p reverse_words('the sky is blue')

# really? leetcode medium????
