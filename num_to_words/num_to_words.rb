module NumFormatter
  NUM_MAP = {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety',
      100 => 'hundred',
  }

  def self.to_segments(num)
    arr = []

    while num > 999
      segment = num % 1000
      num = num / 1000
      arr.push(segment)
    end

    arr.push(num)

    arr.reverse()
  end

  def self.to_words(num)

    return NUM_MAP[num] if NUM_MAP[num] && num < 100

    result = []

    if num > 99
      result << "#{NUM_MAP[num/100]} #{NUM_MAP[100]}"
      num %= 100
    end

    if num > 0
      result << ((tmp = NUM_MAP[num]) ? "#{tmp}" : "#{NUM_MAP[num/10*10]}-#{NUM_MAP[num%10]}")
    end

    result.join(' ')
  end

end