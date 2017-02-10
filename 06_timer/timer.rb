class Timer
    attr_accessor:seconds

    def time_string=(seconds)
        @time_string = timer(@seconds)
    end

    def initialize
      @seconds = 0
    end

    def time_string
      time_in_seconds = @seconds
      hours = time_in_seconds / 3600
      minutes = (time_in_seconds / 60) - (60 * hours)
      seconds = time_in_seconds - (minutes * 60) - (3600 * hours)

      hours = '0' + hours.to_s if hours < 10
      minutes = '0' + minutes.to_s if minutes < 10
      seconds = '0' + seconds.to_s if seconds < 10
      hours.to_s + ':' + minutes.to_s + ':' + seconds.to_s
    end

end
