module PoemHelpers
  def with_line_breaks(body)
    body.gsub(/\n/, "<br />")
  end

  def authorship_tagline(poem)
    "Authored by #{poem.author} on #{longform_date(poem.created_at)}."
  end

  def applause_report(poem)
    case poem.applauses
    when 0
      then "Be the first to applaud this poem."
    when 1
      then "1 reader has applauded this poem."
    else
      "#{poem.applauses} readers have applauded this poem."
    end
  end

  private
  def longform_date(date)
    date.strftime("%B %d, %Y")
  end
end

helpers PoemHelpers
