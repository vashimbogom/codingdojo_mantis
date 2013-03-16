require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/CodeBreaker'


configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
  erb :home
end

get '/Codebreaker' do
  number = params[:guesstext]
  cb = CodeBreaker.new 
  @guess = cb.guess(number)

#  if number == "1234"
#    "__"
#  else
#    "XXXX"
#  end
end
