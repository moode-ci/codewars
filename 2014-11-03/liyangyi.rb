# A初级：
# List Filtering(http://www.codewars.com/kata/list-filtering/ruby)

def filter_list(l)
  l.select{|item| item.is_a? Integer}
end

# Simple elevator(http://www.codewars.com/kata/simple-elevator/ruby)
def goto(level, button)
  if (level.is_a? Integer) && (button.is_a? String)
    ((level.between?(0, 3)) && (button.to_i.between?(0, 3))) ? button.to_i - level : 0
  else
    0
  end
end

# B中级:
#     Sort sentence pseudo-alphabetically(http://www.codewars.com/kata/sort-sentence-pseudo-alphabetically/ruby)

def sort sentence
  s_a = sentence.split(' ').map{|item| item.tr('^a-zA-Z', '')}
  s_upcase_a = s_a.select{|item| item[0].match(/[A-Z]/)}.sort.reverse || []
  s_downcase_a = s_a.select{|item| item[0].match(/[a-z]/)}.sort || []
  s_downcase_a.concat(s_upcase_a).join(' ')
end

# C高级:
# Greed is Good(http://www.codewars.com/kata/greed-is-good/ruby)
def score( dice )
  scores = 0
  dice.group_by{|i| i == 1 ? i*10 : i}.map do |key, val|
    if val.count >= 3
      score_group = [10, 5].include?(key) ? [key*100, (val.count-3)*key*10] : [key*100, 0]
    else
      score_group = [10, 5].include?(key) ? [0, val.count*key*10] : [0, 0]
    end
    scores = scores + score_group.first + score_group.last
  end
  scores
end
