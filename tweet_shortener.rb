
def dictionary
dictionary = {
"hello" => "hi",
"to" => "2",
"too" => "2",
"two" => "2",
"four" => "4",
"for" => "4",
"be" =>"b",
"you" => "u",
"at" => "@",
"and" => "&"
}
end


def word_substituter(tweets)
  new_tweet = []
  tweets.split.each do |word|
    dictionary.each do |key, shortened_word|
      if word.downcase == key
        word = shortened_word
      end
    end
    new_tweet << word
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
      puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
if selective_tweet_shortener(tweet).length > 140
  return "#{selective_tweet_shortener(tweet)[0..135]}+..."
else
  return tweet
end
end
