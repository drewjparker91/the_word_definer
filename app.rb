require ('sinatra')
require ('sinatra/reloader')
require ('./lib/word')
require ('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all
  erb(:words)
end

get('/words') do
  @words = Word.all
  erb(:words)
end

get('/words/:id') do
  @word = Word.find(params[:id].to_i())
  erb(:word)
end

delete('/word/:id') do
  @word = Word.find(params[:id].to_i())
  @word.delete()
  @words = Word.all
  erb(:words)
end

post('/words') do
  @title = params[:word_title]
  @word = Word.new({:title => "#{@title}", :id => nil})
  @word.save
  @words = Word.all
  erb(:words)
end

