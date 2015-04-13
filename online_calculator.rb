require 'pry'
require 'sinatra'
require_relative 'lib/calculator.rb'
require "sinatra/reloader" if development?

get '/' do
	erb :index
end

get '/counting' do
    @numbers = [*1..200]
    erb :counting
end

post '/result' do 
	erb :result
end

post '/add' do
   addition = Addition.new(params[:add1], params[:add2], "addition")
   addition.calculate
   @print_result = addition.print_result
   erb :result
end

post '/substract' do
   substract = Substraction.new(params[:substract1], params[:substract2], "substraction")
   substract.calculate
   @print_result = substract.print_result
   erb :result
end

post '/multiply' do
   multiplication = Multiplication.new(params[:multiply1], params[:multiply2], "multiplication")
   multiplication.calculate
   @print_result = multiplication.print_result
   erb :result
end

post '/divide' do
   division = Division.new(params[:divide1], params[:divide2], "division")
   division.calculate
   @print_result = division.print_result
   erb :result
end

