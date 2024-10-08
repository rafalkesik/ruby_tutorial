require 'date'

# Returns the day of the week for the given Time object.
def day_of_the_week(time)
    Date::DAYNAMES[time.wday]
end
  
# Returns a greeting string specifing the current day of the week.
def greeting()
    "Hello world! Happy #{day_of_the_week(Time.now)}"
end
