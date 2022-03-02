test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad - it sucks."
  ]


test_tweets.each do |sentence|
  banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
  banned_phrases.each do |ban|
    if sentence.include?(ban)
      puts sentence
      # sentence.sub(ban, "CENSORED")
    end
  end
end

# puts test_tweets