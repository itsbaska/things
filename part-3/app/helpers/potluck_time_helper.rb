module PotluckTimeHelpers
  def date_and_time(datetime)
    datetime.strftime("%A %B %e, %Y at %l:%M %P")
  end

  def date(datetime)
    datetime.strftime("%A %B %e, %Y")
  end
end

helpers PotluckTimeHelpers
