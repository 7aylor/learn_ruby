class Book
  attr_accessor :title

  def title=title
    @title = title
    arr = @title.split
    small_words = ["a", "an", "and", "as", "at", "but", "by", "for", "in", "of", "on", "or", "over", "nor", "the", "to"]
    arr[0].capitalize!
    arr.each do |word|
      if(!small_words.include?(word))
        word.capitalize!
      end
    end
    @title = arr.join(" ")
    return @title
  end
end
