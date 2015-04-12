class Timer
  attr_accessor :hours, :minutes, :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string(total=@seconds)
    hours = total / 3600
    minutes = total / 60
    seconds = total % 60
    if(minutes > 60)
      minutes = minutes - ((minutes / 60) * 60)
    end
    return "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(num)
    string = num.to_s
    if(string.to_s.length == 1)
      string = '0' + string
    end
    return string
  end
end

