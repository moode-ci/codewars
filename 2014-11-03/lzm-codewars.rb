初级：

List Filtering

def filter_list(l)
  l.select{|i| i.is_a?Fixnum}
end

Simple elevator

def goto(level, button)
  [0,1,2,3].include?(level) && ['0','1','2','3'].include?(button) ? (button.to_i - level) : 0
end

中级:

Sort sentence pseudo-alphabetically

def sort sentence
  s = sentence.gsub(/\W/, ' ').split(' ')
  up = s.select{|i| i==i.capitalize}
  ((s - up).sort + up.sort.reverse).join(' ')
end

高级:

Greed is Good

def score( dice )
  dice.group_by{|i|i}.map { | key , value |
    case key
      when 1
        value.length > 2 ? 1000 + ((value.length - 3) * 100) : 100 * (value.length)
      when 5
        value.length > 2 ? 500 + ((value.length - 3) * 50) : 50 * (value.length)
      else
        value.length > 2 ? 100 * key : 0
    end
  }.reduce(:+)
end