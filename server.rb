require 'sinatra'
require 'sinatra/flash'
#require 'pry'
require './lib/dice.rb'
require './lib/die.rb'


$alphabet_hash = { 'A' => "http://static.dreamstime.com/t/letter-a-blue-glass-3d-5153463.jpg",
                  'B' => "http://static.dreamstime.com/t/letter-b-blue-glass-3d-5153580.jpg",
                  'C' => "http://static.dreamstime.com/t/letter-c-blue-glass-3d-5420114.jpg",
                  'D' => "http://static.dreamstime.com/t/letter-d-blue-glass-3d-5153575.jpg",
                  'E' => "http://static.dreamstime.com/t/letter-e-blue-glass-3d-5153570.jpg",
                  'F' => "http://static.dreamstime.com/t/letter-f-blue-glass-3d-5153568.jpg",
                  'G' => "http://thumbs.dreamstime.com/t/letter-g-blue-glass-3d-5153567.jpg",
                  'H' => "http://thumbs.dreamstime.com/t/letter-h-blue-glass-3d-5153561.jpg",
                  'I' => "http://thumbs.dreamstime.com/t/letter-i-blue-glass-3d-5153560.jpg",
                  'J' => "http://static.dreamstime.com/t/letter-j-blue-glass-3d-5153558.jpg",
                  'K' => "http://static.dreamstime.com/t/letter-k-glass-3d-4486439.jpg",
                  'L' => "http://thumbs.dreamstime.com/t/letter-l-glass-3d-4486438.jpg",
                  'M' => "http://static.dreamstime.com/t/letter-m-glass-3d-4486450.jpg",
                  'N' => "http://static.dreamstime.com/t/letter-n-glass-3d-4486449.jpg",
                  'O' => "http://static.dreamstime.com/t/letter-o-glass-3d-4486457.jpg",
                  'P' => "http://thumbs.dreamstime.com/t/letter-p-blue-glass-3d-5153528.jpg",
                  'Q' => "http://thumbs.dreamstime.com/t/letter-q-glass-3d-4486472.jpg",
                  'R' => "http://thumbs.dreamstime.com/t/letter-r-blue-glass-3d-5153518.jpg",
                  'S' => "http://thumbs.dreamstime.com/t/letter-s-blue-glass-3d-5153515.jpg",
                  'T' => "http://thumbs.dreamstime.com/t/letter-t-blue-glass-3d-5153502.jpg",
                  'U' => "http://thumbs.dreamstime.com/t/letter-u-blue-glass-3d-5153499.jpg",
                  'W' => "http://thumbs.dreamstime.com/t/letter-w-blue-glass-3d-5153490.jpg",
                  'V' => "http://thumbs.dreamstime.com/t/letter-v-blue-glass-3d-5153486.jpg",
                  'X' => "http://thumbs.dreamstime.com/t/letter-x-blue-glass-3d-5153477.jpg",
                  'Y' => "http://thumbs.dreamstime.com/t/letter-y-blue-glass-3d-5153476.jpg",
                  'Z' => "http://thumbs.dreamstime.com/t/letter-z-blue-glass-3d-5153462.jpg" }


$dice = Dice.new

get '/' do
  redirect '/bLoggle'
end

get '/bLoggle'  do
  $dice.roll
  erb :index, locals: { images: $alphabet_hash }
end

post '/bLoggle' do
  redirect '/bLoggle'
end
