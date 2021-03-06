def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  hash = dictionary
  
  arr = string.split(" ")
  
  arr.each_with_index {|word, idx| arr[idx] = hash[word.downcase] if hash.keys.include?(word.downcase)}
  
  arr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each {|sentence| puts word_substituter(sentence)}
end

def selective_tweet_shortener(string)
  string = word_substituter(string) if string.length > 140
  string
end

def shortened_tweet_truncator(string)
  string = selective_tweet_shortener(string)
  
  if string.length > 140
    string = string[0..136] + "..."
  end
  
  string
  
end