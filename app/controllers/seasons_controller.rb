class SeasonsController < ApplicationController

    get "/seasons/:id/winner" do 
        season = Season.find(params[:id])
        season.winner.to_json
    end
    
end