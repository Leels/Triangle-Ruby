require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

post('/') do
  input1 = params[:input1].to_i
  input2 = params[:input2].to_i
  input3 = params[:input3].to_i
  @triangle = Triangle.new(input1, input2, input3)
  erb(:output)
end
