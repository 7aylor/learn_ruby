def translate(sentence)
  arr = sentence.split
  #if there is just one word in the array
  if(arr.length == 1)
    translateWord(arr[0])
  #otherwise it is a sentence
  else
    arr.map! {|word| translateWord(word)}
    return arr.join(" ")
  end
end

def translateWord(word)
  word.downcase!
  vowels = ["a", "e", "i", "o", "u"]
  
  #starts with a vowel
  if vowels.include?(word[0])
    return word + "ay"
  #starts with 3 consonants, or 1 consonant followed by qu
  elsif ((!vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])) || (!vowels.include?(word[0]) && word[1..2] == "qu"))
    return word[3..-1] + word[0..2] + "ay"
  #starts with two consonants, or qu
  elsif ((!vowels.include?(word[0]) && !vowels.include?(word[1])) || word[0..1] == "qu")
    return word[2..-1] + word[0..1] + "ay"
  #starts with a consonant
  else
    return word[1.. -1] + word[0] + "ay"
  end
end
