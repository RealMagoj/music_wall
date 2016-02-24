# def validate_login
#   true
# end

# Homepage (Root path)
get '/' do
  erb :index
end

get '/tracks' do
  @tracks = Track.all
  erb :'tracks/index'
end

get '/tracks/new' do
  @track = Track.new
  erb :'tracks/new'
end

post '/tracks' do
  @track = Track.new(
    title: params[:title],
    artist: params[:artist],
    url: params[:url]
  )
  if @track.save
    redirect '/tracks'
  else
    erb :'tracks/new'
  end
end

get '/tracks/:id' do
  @track = Track.find params[:id]
  erb :'tracks/show'
end

# post '/user/new' do
#   @user = User.new(
#     user: params[:name],
#     password: params[:password])
#   @user.save
#   @false_login = false
#   erb :thanks_and_login_page
# end

# get '/user/login' do
#   if (validate_login)
#   else
#     @false_login = true
#   end
# end