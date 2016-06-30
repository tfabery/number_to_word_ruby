require('sinatra')
require('sinatra/reloader')
require('./lib/number_to_word')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @num = params.fetch("num").to_i
  @result = @num.num_to_word()
  erb(:result)
end
