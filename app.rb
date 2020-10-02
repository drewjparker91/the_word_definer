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
  @definitions = Definition.find_by_word(params[:id].to_i)
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


post('/words/:id') do
  @word = Word.find(params[:id].to_i)
  @body = params[:definition_body]
  puts '>>> word: %s' % [@word.title]
  puts '>>> body: %s' % [@body]
  @definition = Definition.new({:body => "#{@body}", :id => nil, :word_id => ("#{@word.id}").to_i })
  @definition.save
  @definitions = Definition.find_by_word(params[:id].to_i)
  erb(:word)
end

get('/words/:id/edit') do
  @word = Word.find(params[:id].to_i)
  erb(:edit_word)
end

get('word/:id/definition/:definition_id') do
  @definition = Definition.find(params[:definition_id].to_i)
  @word_id = params[:id].to_i
  erb(:edit_definition)
end

patch('/words/:id') do
  @word = Word.find(params[:id].to_i())
  title = params[:title]
  @word.update_title(title)
  @definitions = Definition.find_by_word(params[:id].to_i)
  # @words = Word.all
  erb(:word)
end

get('/definition/:id/edit') do
  @definition = Definition.find(params[:id].to_i())
  erb(:edit_definition)
end

patch('/definition/:id') do
  @definition = Definition.find(params[:id].to_i())
  body = params[:body]
  @definition.update_body(body)
  @definitions = Definition.find_by_word(params[:id].to_i)
  erb(:edit_definition)
end

get('/words/:id/definitions/:definition_id') do 
  @definition = Definition.find(params[:definition_id].to_i)
  @word_id = params[:id]
  erb(:definition)
end

delete('/definitions/:id') do
  @definition = Definition.find(params[:id].to_i)
  @definition.delete()
  @word = Word.find(params[:id].to_i)
  erb(:word)
end

# delete('/word/:id') do
#   @word = Word.find(params[:id].to_i())
#   @word.delete()
#   @words = Word.all
#   erb(:words)
# end


