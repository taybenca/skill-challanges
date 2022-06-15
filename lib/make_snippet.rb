def make_snippet(text)
  if text == ""
    text
  else
    words = text.split(" ")
    words[0..4].join(" ") + "..."
  end
end