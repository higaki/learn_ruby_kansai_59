#! /usr/bin/env ruby

class String
  def cmarbdige
    case
    when size <= 3 then self
    else
      self[0] + self[1..2].chars.each_slice(2).map(&:reverse).join + self[-1]
    end
  end
end
