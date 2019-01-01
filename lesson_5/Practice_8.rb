hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |arr|
  arr.each do |word|
    word.chars.each do |ch|
      puts ch if 'aeiouAEIOU'.include?(ch)
    end
  end
end
