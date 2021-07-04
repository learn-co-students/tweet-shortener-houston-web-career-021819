# Write your code here.
def word_substituter(tweet)

dictionary = {"hello" => "hi", 
              "to" => "2",
              "two" => "2",
              "too" => "2",
              "for" => "4",
              "four" => "4",
              "be" => "b",
              "you" => "u",
              "at" => "@",
              "and" => "&"}

  tweet = tweet.split(" ")
  tweet.collect do |word|
   dictionary.keys.include?(word.downcase)? word.sub!(word, dictionary[word.downcase]): word
  end
  tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet.slice(0, 137).insert(-1, "...")
  else
    tweet
  end
end