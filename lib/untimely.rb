
module Untimely

  # When you subtract one Time from another, you
  # interval betw/ the two timestamps.
  # This method translates that number into something
  # that's a bit easier to wrap your brain around.
  def interval_length(timestamp)
    t = timestamp.abs.floor

    seconds = t % 60
    t /= 60

    minutes = t % 60
    t /= 60

    hours = t % 24
    t /= 24

    days = t

    return {
      seconds: seconds,
      minutes: minutes,
      hours:   hours,
      days:    days
    }
  end
  module_function :interval_length

end

