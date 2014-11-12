def filter_list(l)
  l.select{|a| a.is_a? Fixnum}
end

def goto(level, button)
  (![0,1,2,3].include?(level) || !['0','1','2','3'].include?(button)) ? 0 : (button.to_i - level)
end

def sort sentence
  upcase_array = []
  low_case_array = []
  sentence.gsub(/\W/, '*').gsub(/\*\*/, '*').split('*').each {|word| word.match(/[A-Z]/) != nil ? upcase_array.push(word) : low_case_array.push(word) }
  (low_case_array.sort + upcase_array.sort.reverse).join(' ')
end

def score( dice )
  dice.group_by{|num| num}.map {|key, value|
    case key
      when 1
        value.count > 2 ? 1000 + (value.count - 3) * 100 : 100 * (value.count)
      when 5
        value.count > 2 ? 500 + (value.count - 3) * 50 : 50 * (value.count)
      else
        value.count > 2 ? 100 * key : 0
    end
  }.reduce :+
end