test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad - it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

censored_tweets = []

  
  test_tweets.each do |sentence|
    censored_sentence = sentence
    banned_phrases.each do |ban|
      if sentence.include?(ban)
        censored_sentence = censored_sentence.sub(ban, "CENSORED")
      end
    end
    censored_tweets.append(censored_sentence)
  end

  puts censored_tweets

# This president CENSORED!
# I CENSORED this Blank House!
# I can't believe we're living under such CENSORED leadership. We were so foolish
# I can't believe we're living under such bad leadership. We were so CENSORED
# President Presidentname is a danger to society. I hate that he's so bad - it CENSORED.
# President Presidentname is a danger to society. I hate that he's so CENSORED - it sucks.
# President Presidentname is a danger to society. I CENSORED that he's so bad - it sucks.
# President Presidentname is a CENSORED. I hate that he's so bad - it sucks.