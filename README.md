The Markov Chain Generator class uses a text-based Markov chain algorithm and any "learning" text as input to generate semi-random text. It can begin a chain with any word that is found in the text it is initialized with (case-sensitive). From there, it uses a probability distribution based on the words which most frequently follow the current word in the text it was "trained" on to choose the following word, which it then appends and moves on to. This process can be repeated as many times as the user desires. If a start word is not specified, the program will choose one at random from the source text.

This can be used to generate filler text that looks and sounds reasonably close to real English, but it also often reveals interesting stylistic trends in the original text. For instance, the code in example.rb builds Markov chain generators using three famous novels as source text. The results of running the examples given for each of these, while not exactly sensical, should be stylistically and syntactically recognizable to anyone familiar with the works.

Request a chain of at least 30 words for best results.

Now available as a [gem](https://github.com/nathanielltaylor/MoreMarkov)
