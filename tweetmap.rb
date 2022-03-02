test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad - it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

  test_tweets.map! { |sentence|
    censored_sentence = sentence
    banned_phrases.each do |ban|
      if sentence.include?(ban)
        censored_sentence = censored_sentence.sub(ban, "CENSORED")
      end
    end
    sentence = censored_sentence
  }

  puts test_tweets