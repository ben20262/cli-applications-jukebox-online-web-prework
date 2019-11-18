def help
  puts "I accept the following commands"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  count = 1
  songs.each {|song| puts "#{count}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  playing = ""
  songs.each_with_index do |song, index|
    if Integer(input) - 1 == index || input == song
      playing = song
    end
  end
  if playing == ""
    puts "Invalid input, please try again"
    play(songs)
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  x = 1
  while x = 1 do
    puts "Please enter a command:"
    input = gets.strip
    if input == "help"
      help()
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "exit"
      exit_jukebox()
      return
    end
  end
end
