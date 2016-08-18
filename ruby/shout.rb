
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!!!" + " :D"
  end
end

p Shout.yell_angrily("wow")
p Shout.yelling_happily("wooo")