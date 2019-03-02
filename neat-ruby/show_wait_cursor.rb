# words can be any array of strings of any length
def show_wait_cursor(seconds, fps=10, words=%w[- \\ | /])
  delay = 1.0/fps
  (seconds * fps).round.times do |i|
    word = words[i % words.length]
    print word
    sleep delay
    print "\b"*word.length
  end
end

show_wait_cursor 5
