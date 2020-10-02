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

# POSTING DEFINITION TO SPECIFIC WORD
# post('/boards/:id') do
#   @board = Board.find(params[:id].to_i)
#   @title = params[:message_name]
#   @body = params[:message_body]
#   @message = Message.new({:title => @title, :body => "#{@body}", :board_id => ("#{@board.id}").to_i, :time => nil, :id => nil})
#   @message.save
#   @messages = Message.find_by_board(params[:id].to_i)
#   erb(:board)
# end


