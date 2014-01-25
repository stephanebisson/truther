require "truther/version"

module Truther
  TRUTHER_STRINGS = ['true', '1', 'yes', 'y', 'oui', 'vrai']
  FALSY_STRINGS = ['false', '0', 'no', 'n', 'non', 'faux']

  class NeitherTrueNorFalseError < StandardError
	  def initialize(str)
	    super("'#{str}' is not recognized as truther or falsy.")
	  end
	end
end

class String 
	def to_b(when_not_recognized=:raise)
		sanitized_string = self.downcase.strip
		return true if Truther::TRUTHER_STRINGS.include? sanitized_string
		return false if Truther::FALSY_STRINGS.include? sanitized_string
		
		if when_not_recognized == :raise
			raise Truther::NeitherTrueNorFalseError.new sanitized_string
		else
			when_not_recognized
		end
	end
end

class NilClass
	def to_b
		false
	end
end

class Integer
	def to_b
		self > 0
	end
end

class Float
	def to_b
		self > 0.0
	end
end

class TrueClass
	def to_b
		true
	end
end

class FalseClass
	def to_b
		false
	end
end
