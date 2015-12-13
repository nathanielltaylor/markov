require_relative "markov"

separator = "------------------------"

faulkner_source = IO.read("books/as_i_lay_dying.txt")
faulkner_gen = MarkovChainGenerator.new(faulkner_source)
faulkner_gen.find_patterns
puts faulkner_gen.generate_chain(50)
puts separator
puts faulkner_gen.generate_chain(100, "buzzard")
puts separator
puts faulkner_gen.generate_chain(30, "coffin")

2.times do
  3.times { print separator }
  puts "\n"
end

dickens_source = IO.read("books/great_expectations.txt")
dickens_gen = MarkovChainGenerator.new(dickens_source)
dickens_gen.find_patterns
puts dickens_gen.generate_chain(50)
puts separator
puts dickens_gen.generate_chain(30, "wretched")
puts separator
puts dickens_gen.generate_chain(60, "wealth")

2.times do
  3.times { print separator }
  puts "\n"
end

carroll_source = IO.read("books/alice_in_wonderland.txt")
carroll_gen = MarkovChainGenerator.new(carroll_source)
carroll_gen.find_patterns
puts carroll_gen.generate_chain(50)
puts separator
puts carroll_gen.generate_chain(40, "rabbit")
puts separator
puts carroll_gen.generate_chain(60, "Queen")
puts separator
puts carroll_gen.generate_chain(100, "time")
