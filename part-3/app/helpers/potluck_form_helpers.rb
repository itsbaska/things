module PotluckFormHelpers
  def potluck_form_action(potluck)
    potluck.persisted? ? "/potlucks/#{potluck.id}" : "/potlucks"
  end

  def potluck_date_input_format(datetime)
    return "" unless datetime
    datetime.strftime("%Y-%m-%d %I:%M %P")
  end

  def submit_button_value(potluck)
    potluck.persisted? ? "Update Potluck" : "Create Potluck"
  end
end

helpers PotluckFormHelpers
