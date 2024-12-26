# @param {Integer[]} citations
# @return {Integer}

def h_index(citations)
  citations.sort! { |a, b| a <=> b }
  buffer = []
  buffer.push(citations.pop) while !citations.empty? && citations.last > buffer.length &&
                                   (buffer.empty? || buffer.length < buffer.last)
  buffer.length
end
