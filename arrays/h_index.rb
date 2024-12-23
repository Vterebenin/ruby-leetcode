# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
  citations.sort! { |a, b| a <=> b }
  buffer = []
  buffer.push(citations.pop) while !citations.empty? && citations.last > buffer.length &&
                                   (buffer.empty? || buffer.length < buffer.last)
  buffer.length
end

p h_index([9, 7, 6, 2, 1]) # 3
p h_index([1, 2, 6, 7, 9]) # 3
p h_index([3, 0, 6, 1, 5]) # 3
p h_index([1, 3, 1]) # 1
p h_index([1])
