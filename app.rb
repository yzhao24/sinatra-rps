require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:homepage)

end


get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move =="paper"  
    @outcome = "lost"
  else
    @outcome = "won"  
  end

  erb(:zebra)
end

get("/paper") do

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  erb(:giraffe)

end  


get("/scissors") do

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  erb(:cow)

end  
