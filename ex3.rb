#! /usr/bin/env ruby

class String
  def cmarbdige
    case
    when size <= 3 then self
    else
      self[0] + self[1..-2].chars.each_slice(2).map(&:reverse).join + self[-1]
    end
  end
end

module LearnRubyKansai
  def self.cambridge(str, punctuations)
    case
    when punctuations.empty?
      str.strip.split(/\s+/).map(&:cmarbdige).join(' ')
    else
      punc = punctuations.shift
      str.split(/#{Regexp.quote punc}/, -1)
        .map{|s| cambridge(s, punctuations.dup)}.join(punc)
    end
  end
end

if $0 == __FILE__
  str = ARGF.read
  punctuations =
    str.scan(/\p{^Word}+/).reject{|p| /\A *\z/ =~ p}.uniq.sort_by{|i| -i.size}

  puts LearnRubyKansai::cambridge(str, punctuations)
end
