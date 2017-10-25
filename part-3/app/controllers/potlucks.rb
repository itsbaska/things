get '/potlucks' do
  @potlucks = Potluck.order(:starts_at)
  @upcoming_potlucks = @potlucks.select {|potluck| potluck.upcoming?}
  erb :"potlucks/index"
end

get '/potlucks/new' do
  authenticate!
  @potluck = Potluck.new
  erb :"potlucks/new"
end

post '/potlucks' do
  authenticate!
  @potluck = Potluck.new(params[:potluck])

  if @potluck.save
    current_user.potlucks << @potluck
    redirect '/potlucks'
  else
    @errors = @potluck.errors.full_messages
    erb :"potlucks/new"
  end
end

get '/potlucks/:id' do
  @potluck = Potluck.find_by(id: params[:id])
  @attendances = @potluck.attendances
  if current_user.attending?(@potluck)
    @dish = @attendances.find_by(attendee_id: current_user.id).dish
  end
  erb :"potlucks/show"
end

get '/potlucks/:id/edit' do
  authenticate!
  @potluck = Potluck.find_by(id: params[:id])
  authorize!(@potluck.host)
  erb :"potlucks/edit"
end

put '/potlucks/:id' do
  authenticate!
  @potluck = Potluck.find_by(id: params[:id])
  authorize!(@potluck.host)

  if @potluck.update(params[:potluck])
    redirect '/potlucks'
  else
    @errors = @potluck.errors.full_messages
    erb :"potlucks/edit"
  end
end

delete '/potlucks/:id' do
  authenticate!
  @potluck = Potluck.find_by(id: params[:id])
  authorize!(@potluck.host)
  @potluck.destroy
  redirect '/potlucks'
end

