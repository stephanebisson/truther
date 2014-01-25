require "truthy/version"

module Truthy
  TRUTHY_STRINGS = ['true', '1', 'yes', 'y', 'oui', 'vrai']
  FALSY_STRINGS = ['false', '0', 'no', 'n', 'non', 'faux']

  class NeitherTrueNoFalseError < StandardError
	  def initialize(str)
	    super("'#{str}' is not recognized as truthy or falsy.")
	  end
	end
end

class String 
	def to_b(when_not_recognized=:raise)
		sanitized_string = self.downcase.strip
		return true if Truthy::TRUTHY_STRINGS.include? sanitized_string
		return false if Truthy::FALSY_STRINGS.include? sanitized_string
		
		if when_not_recognized == :raise
			raise Truthy::NeitherTrueNoFalseError.new sanitized_string
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