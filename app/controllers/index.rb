get '/' do
  erb :index
end


# TODO: convert this route to use AJAX
post '/rolls' do
    value = params[:value] ? params[:value].to_i : nil
    @roll = value ? Roll.create({ value: value }) : Roll.create

  if request.xhr?
    erb :die, :layout => false
  else
    erb :index
  end
end
