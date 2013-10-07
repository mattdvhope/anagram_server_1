get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/anagrams' do
  @word = Word.anagrams_for(params[:user_input])
  if @word.length > 0    
    erb :anagrams
  else
    redirect "/"
  end
end
