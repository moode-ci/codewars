初级1 List Filtering
def filter_list(l)
  l.select{|item| item.is_a? Fixnum}
end

初级2 Simple Elevator
def goto(level, button)
  (level.is_a?(Fixnum) && level>=0 && level<4 && button.is_a?(String) && button>='0' && button<'4') ? button.to_i-level : 0
end

中级 Sort Sentence Pseudo-alphabetically
def sort sentence
  sentence = sentence.gsub(/[,.?!']/, '').split(' ')
  capital = sentence.select {|item| item[0] == item[0].upcase}.sort.reverse
  ((sentence - capital).sort + capital).join(' ')
end


高级 Greed is Good
def score( dice )
  relation = {1=>1000, 2=>200, 3=>300, 4=>400, 5=>500, 6=>600}
  array = dice.group_by{|n| n}
  thirdth = array.select{|k, v| v.length>=3}.keys
  three_times = thirdth[0].nil? ? 0 : relation[thirdth[0]]
  one_count = array.select{|k,v| k==1}.values[0]
  five_count = array.select{|k,v| k==5}.values[0]
  if !one_count.nil? && one_count.count<3
    one = one_count.count*100
  elsif !one_count.nil? && one_count.count>3
    one = (one_count.count-3)*100
  else
    one = 0
  end
  if !five_count.nil? && five_count.count<3
    five = five_count.count*50
  elsif !five_count.nil? && five_count.count>3
    five = (five_count.count-3)*50
  else
    five = 0
  end
  three_times + one + five
end
