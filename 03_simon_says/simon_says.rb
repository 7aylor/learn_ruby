#echo's the command
def echo(command)
  command.to_s
end

#shouts the command
def shout(command)
  command.upcase
end

#repeats the command
def repeat(command, num=2)
  if(num == 0)
    return nil
  elsif(num == 1)
    return command.to_s
  elsif(num == 2)
    return command.to_s + " " + command.to_s
  else
    string_command = (command.to_s + " ") * (num - 1)
    string_command = string_command + command.to_s
    return string_command
  end
end

#returns first num characters of the word
def start_of_word(word, num=1)
  word[0, num] 
end

#returns first word of command
def first_word(sentence)
  arr = sentence.split(" ")
  arr[0] 
end

#capitalize all title words
def titleize(sentence)
  arr = sentence.downcase.split
  small_words = ["a", "an", "and", "as", "at", "but", "by", "for", "in", "of", "on", "or", "over", "nor", "the", "to"]
  arr.each do |word|
    if small_words.include?(word)
       word.downcase!
    else
       word.capitalize!
    end
  end
  arr[0].capitalize!
  arr.join(" ")
end
