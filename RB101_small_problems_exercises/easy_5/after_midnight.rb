def time_of_day(int)
  int = int % 1440 if (int > 1440) || (int < -1440)
  hours = int/60
  minutes = int % 60

  if negative?(int)
    hours = 24 - hours.abs
    minutes = minutes.abs
  end

  hours = "0#{hours.to_s}" if hours < 10
  minutes = "0#{minutes.to_s}" if minutes < 10
  "#{hours}:#{minutes}"
end

def negative?(int)
  int < 0
end

def before_midnight(str)
  hours, minutes = str.split(":")
  hours = 0 if hours.to_i == 24
  hours = hours.to_i * 60

  total = 1440 - hours - minutes.to_i 
  return 0 if total == 1440
  total
end

def after_midnight(str)
  hours, minutes = str.split(":")
  hours = 0 if hours.to_i == 24
  hours = hours.to_i * 60
  total = hours + minutes.to_i
end



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p "-------------"
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0