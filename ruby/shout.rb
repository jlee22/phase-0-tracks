
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :D"
#   end
# end

# p Shout.yell_angrily("wow")
# p Shout.yelling_happily("wooo")

module Shout
 def yell_angrily(words)
    p words.capitalize + "!!!" + " :("
  end

  def yelling_happily(words)
  	p words.capitalize + "!!!" + " :D"
  end
end


class Parents
	include Shout
end

class Police
	include Shout
end

mom = Parents.new
mom.yell_angrily("do your homework")
mom.yelling_happily("thanks for helping out")

policeman = Police.new
policeman.yell_angrily("freeze")
policeman.yelling_happily("donuts")
