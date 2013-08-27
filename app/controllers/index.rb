

get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end


post '/cool_url' do
  p params
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}" 
  @user_input= params[:user_input]

  Note.create(:text => params[:user_input])
  erb :post_cool_url
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

