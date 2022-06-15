def make_snippet(text)
  words = text.split(" ")
  words[0..4].join(" ") + "..."
end