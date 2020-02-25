require 'pry'
class PigLatinizer
	attr_accessor :string

	def initialize
		@string = string
	end

	def piglatinize(string)

	  pig_latin = []

	  words = string.split(/\W+/)

	  words.each do |word|

	    case word
	    when /^[aeiou]/i
	      pig_latin << (word + "way")

	    when /^qu/i
	      word << word[0,2] << 'ay'
	      pig_latin << word[2 .. -1]

	    when /^[^aeiou]{3}/i
	      word << word[0,3] << 'ay'
	      pig_latin << word[3..-1]

	    when /^[^aeiou]{2}/i
	      word << word[0, 2] << 'ay'
	      pig_latin << word[2 .. -1]

	    else
	      word << word[0] << 'ay'
	      pig_latin << word[1 .. -1]
	    end

	  end
	  pig_latin.join(' ')
	end

end