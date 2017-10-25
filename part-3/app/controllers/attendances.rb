post '/potlucks/:id/attendances' do
  authenticate!
  @potluck = Potluck.find(params[:id])
  @attendance = Attendance.new(attendee_id: current_user.id, potluck_id: params[:id], dish: params[:dish])
  if @attendance.save
    redirect "/potlucks/#{@potluck.id}"
  else
    @errors = ["You are already signed up for this potluck"]
    redirect "/potlucks/#{@potluck.id}"
  end
end

