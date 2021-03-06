# https://atcoder.jp/contests/practice2/submissions/16569175

require "./scc.rb"

n, m = gets.split.map &:to_i
g = SCCGraph.new(n)
m.times do
  a, b = gets.split.map &:to_i
  g.add_edge(a, b)
end

groups = g.scc
puts groups.size
groups.each do |group|
  puts ([group.size] + group).join(" ")
end