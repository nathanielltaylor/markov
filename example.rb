require_relative "markov"
separator = "\n ------------------------ \n"

faulkner_source = IO.read("as_i_lay_dying.txt")
faulkner_gen = MarkovChainGenerator.new(faulkner_source)
faulkner_gen.find_patterns
puts faulkner_gen.generate_chain(50)
puts separator
puts faulkner_gen.generate_chain(100, "buzzard")
puts separator
puts faulkner_gen.generate_chain(30, "river")

puts separator
puts separator

dickens_source = IO.read("great_expectations.txt")
dickens_gen = MarkovChainGenerator.new(dickens_source)
dickens_gen.find_patterns
puts dickens_gen.generate_chain(50)
puts separator
puts dickens_gen.generate_chain(10, "convict")
puts separator
puts dickens_gen.generate_chain(60, "wealth")
puts separator
