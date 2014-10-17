Remove Duplicates

  def unique(integers)
    array = []
    integers.each do |i|
      if integers.index(i)
        integers = integers - [i]
        array.push(i)
      end
    end
    array
  end

Breaking chocolate problem

  def break_chocolate(n, m)
    n != 0 && m != 0 ? n * m - 1 : 0
  end

Change Machine

  def change(cents)
    arr = [25,10,5,1]
    cents = cents > 0 ? cents : 0
    arr.each_with_object({}) {
        |str, hsh| hsh[str] = cents/str;
      cents = cents%str
    }
  end

Sherlock on numbers

  def find_suspect(*numbers)
    n = numbers.inject(Hash.new(0)){|number,i|number[i] += 1; number}
    s = n.select{|k,v| v==n.values.min}
    s.length == 1 ? s.keys[0] : nil
  end